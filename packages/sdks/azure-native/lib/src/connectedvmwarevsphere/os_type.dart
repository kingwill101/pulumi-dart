/// Gets or sets the type of the os.
enum OsType {
  valueWindows("Windows"),
  valueLinux("Linux"),
  valueOther("Other");

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
