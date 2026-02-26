/// Required. The allowed OS type.
enum OsConstraintOsType2 {
  osUnspecified("OS_UNSPECIFIED"),
  desktopMac("DESKTOP_MAC"),
  desktopWindows("DESKTOP_WINDOWS"),
  desktopLinux("DESKTOP_LINUX"),
  desktopChromeOs("DESKTOP_CHROME_OS"),
  android("ANDROID"),
  ios("IOS");

  const OsConstraintOsType2(this.value);
  final String value;

  static OsConstraintOsType2 fromValue(String value) {
    for (final item in OsConstraintOsType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsConstraintOsType2 value: $value');
  }
}
