enum OperatingSystemType {
  valueWindows("Windows"),
  valueLinux("Linux");

  const OperatingSystemType(this.value);
  final String value;

  static OperatingSystemType fromValue(String value) {
    for (final item in OperatingSystemType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatingSystemType value: $value');
  }
}

