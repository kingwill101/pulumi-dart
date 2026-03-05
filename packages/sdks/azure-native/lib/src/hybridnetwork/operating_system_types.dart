/// The OS type.
enum OperatingSystemTypes {
  valueUnknown("Unknown"),
  valueWindows("Windows"),
  valueLinux("Linux");

  const OperatingSystemTypes(this.wireValue);
  final String wireValue;

  static OperatingSystemTypes fromValue(String value) {
    for (final item in OperatingSystemTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatingSystemTypes value: $value');
  }
}

