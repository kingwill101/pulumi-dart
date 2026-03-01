/// The OS type of the environment.
enum OperatingSystemType {
  valueLinux("Linux"),
  valueWindows("Windows");

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

