/// operating system of target machines
enum OperatingSystemType {
  valueWindows("Windows"),
  valueLinux("Linux");

  const OperatingSystemType(this.wireValue);
  final String wireValue;

  static OperatingSystemType fromValue(String value) {
    for (final item in OperatingSystemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatingSystemType value: $value');
  }
}

