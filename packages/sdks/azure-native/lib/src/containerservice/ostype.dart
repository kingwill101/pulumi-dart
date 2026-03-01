/// The operating system type. The default is Linux.
enum OSType {
  valueLinux("Linux"),
  valueWindows("Windows");

  const OSType(this.value);
  final String value;

  static OSType fromValue(String value) {
    for (final item in OSType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSType value: $value');
  }
}

