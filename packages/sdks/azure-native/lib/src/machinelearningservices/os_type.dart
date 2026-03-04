/// Compute OS Type
enum OsType {
  valueLinux("Linux"),
  valueWindows("Windows");

  const OsType(this.wireValue);
  final String wireValue;

  static OsType fromValue(String value) {
    for (final item in OsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsType value: $value');
  }
}
