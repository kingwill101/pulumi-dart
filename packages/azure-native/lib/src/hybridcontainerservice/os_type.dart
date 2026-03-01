/// OsType - OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. Possible values include: 'Linux', 'Windows'
enum OsType {
  valueLinux("Linux"),
  valueWindows("Windows");

  const OsType(this.value);
  final String value;

  static OsType fromValue(String value) {
    for (final item in OsType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsType value: $value');
  }
}

