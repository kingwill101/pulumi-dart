/// The type of operating system.
enum OperatingSystemType {
  linux("Linux"),
  windows("Windows");

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
