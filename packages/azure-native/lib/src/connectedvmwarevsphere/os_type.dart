/// Gets or sets the type of the os.
enum OsType {
  valueWindows("Windows"),
  valueLinux("Linux"),
  valueOther("Other");

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

