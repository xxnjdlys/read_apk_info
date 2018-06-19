# !/bin/bash
# 根据路径读取包名,先卸载后安装. 安装后打开.

LYS_APK_FILE=$1

LYS_PACKAGE=`aapt dump badging ${LYS_APK_FILE} | grep package | awk '{print $2}' | sed s/name=//g | sed s/\'//g`
LYS_VERSIONCODE=`aapt dump badging ${LYS_APK_FILE} | grep versionCode | awk '{print $3}' | sed s/versionCode=//g | sed s/\'//g`
LYS_VERSIONNAME=`aapt dump badging ${LYS_APK_FILE} | grep versionName | awk '{print $4}' | sed s/versionName=//g | sed s/\'//g`
LYS_MINSDKVERSION=`aapt dump badging ${LYS_APK_FILE} | grep sdkVersion | sed s/sdkVersion://g | sed s/\'//g`
LYS_TARGETSDKVERSION=`aapt dump badging ${LYS_APK_FILE} | grep targetSdkVersion: | sed s/targetSdkVersion://g | sed s/\'//g`

echo
echo '======================================================='
echo '| tartargetSdkVersion : '${LYS_TARGETSDKVERSION} 
echo '|       minSdkVersion : '${LYS_MINSDKVERSION}
echo '|         versionCode : '${LYS_VERSIONCODE}
echo '|         versionName : '${LYS_VERSIONNAME}
echo '|             package : '${LYS_PACKAGE}
echo '======================================================='
echo
