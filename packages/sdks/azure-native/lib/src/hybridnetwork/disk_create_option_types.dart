/// Specifies how the virtual machine should be created.
enum DiskCreateOptionTypes {
  valueUnknown("Unknown"),
  valueEmpty("Empty");

  const DiskCreateOptionTypes(this.value);
  final String value;

  static DiskCreateOptionTypes fromValue(String value) {
    for (final item in DiskCreateOptionTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskCreateOptionTypes value: $value');
  }
}

