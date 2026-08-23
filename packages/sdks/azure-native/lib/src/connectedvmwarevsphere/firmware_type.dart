/// Firmware type
enum FirmwareType {
  valueBios("bios"),
  valueEfi("efi");

  const FirmwareType(this.wireValue);
  final String wireValue;

  static FirmwareType fromValue(String value) {
    for (final item in FirmwareType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirmwareType value: $value');
  }
}
