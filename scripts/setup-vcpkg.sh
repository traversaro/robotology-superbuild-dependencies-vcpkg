scriptDirectory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )" 
installerRootPath=`realpath $scriptDirectory/..`

vcpkgTriplet="x64-windows"
vcpkgInstallDir=${installerRootPath}/vcpkg/installed/${vcpkgTriplet}

# Update PATH 
export PATH=$PATH:${vcpkgInstallDir}/bin
export PATH=$PATH:${vcpkgInstallDir}/debug/bin

# Update CMAKE_PREFIX_PATH
export CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH:${vcpkgInstallDir}
export CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH:${vcpkgInstallDir}/debug
