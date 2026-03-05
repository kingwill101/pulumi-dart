/// The OS type of the environment.
enum OperatingSystemType {
  valueLinux("Linux"),
  valueWindows("Windows");

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

