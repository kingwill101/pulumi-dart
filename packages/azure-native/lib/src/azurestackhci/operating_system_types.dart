/// This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Possible values are: Windows, Linux.
enum OperatingSystemTypes {
  windows("Windows"),
  linux("Linux");

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

