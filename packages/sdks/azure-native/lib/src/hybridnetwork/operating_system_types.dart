/// The OS type.
enum OperatingSystemTypes {
  valueUnknown("Unknown"),
  valueWindows("Windows"),
  valueLinux("Linux");

  const OperatingSystemTypes(this.value);
  final String value;

  static OperatingSystemTypes fromValue(String value) {
    for (final item in OperatingSystemTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatingSystemTypes value: $value');
  }
}

