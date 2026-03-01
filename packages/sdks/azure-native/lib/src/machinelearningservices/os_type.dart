/// Compute OS Type
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

