/// Required. The allowed OS type.
enum OsConstraintOsTypeAccesscontextmanagerV1beta {
  osUnspecified("OS_UNSPECIFIED"),
  desktopMac("DESKTOP_MAC"),
  desktopWindows("DESKTOP_WINDOWS"),
  desktopLinux("DESKTOP_LINUX"),
  desktopChromeOs("DESKTOP_CHROME_OS"),
  android("ANDROID"),
  ios("IOS");

  const OsConstraintOsTypeAccesscontextmanagerV1beta(this.value);
  final String value;

  static OsConstraintOsTypeAccesscontextmanagerV1beta fromValue(String value) {
    for (final item in OsConstraintOsTypeAccesscontextmanagerV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown OsConstraintOsTypeAccesscontextmanagerV1beta value: $value',
    );
  }
}
