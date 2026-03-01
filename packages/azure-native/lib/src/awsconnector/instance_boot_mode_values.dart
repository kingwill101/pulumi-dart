/// Property value
enum InstanceBootModeValues {
  legacyBios("legacy-bios"),
  uefi("uefi");

  const InstanceBootModeValues(this.value);
  final String value;

  static InstanceBootModeValues fromValue(String value) {
    for (final item in InstanceBootModeValues.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceBootModeValues value: $value');
  }
}

