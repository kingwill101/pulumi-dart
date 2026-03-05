/// The operating system type required by the containers in the container group.
enum OperatingSystemTypes {
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

