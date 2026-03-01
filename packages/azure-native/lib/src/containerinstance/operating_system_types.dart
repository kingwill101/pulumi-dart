/// The operating system type required by the containers in the container group.
enum OperatingSystemTypes {
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

