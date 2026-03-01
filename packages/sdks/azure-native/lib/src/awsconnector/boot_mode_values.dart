/// Property value
enum BootModeValues {
  legacyBios("legacy-bios"),
  uefi("uefi"),
  uefiPreferred("uefi-preferred");

  const BootModeValues(this.value);
  final String value;

  static BootModeValues fromValue(String value) {
    for (final item in BootModeValues.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BootModeValues value: $value');
  }
}

