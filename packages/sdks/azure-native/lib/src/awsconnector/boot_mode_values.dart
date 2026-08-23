/// Property value
enum BootModeValues {
  legacyBios("legacy-bios"),
  uefi("uefi"),
  uefiPreferred("uefi-preferred");

  const BootModeValues(this.wireValue);
  final String wireValue;

  static BootModeValues fromValue(String value) {
    for (final item in BootModeValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BootModeValues value: $value');
  }
}
