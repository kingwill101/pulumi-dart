/// Property value
enum InstanceBootModeValues {
  legacyBios("legacy-bios"),
  uefi("uefi");

  const InstanceBootModeValues(this.wireValue);
  final String wireValue;

  static InstanceBootModeValues fromValue(String value) {
    for (final item in InstanceBootModeValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceBootModeValues value: $value');
  }
}
