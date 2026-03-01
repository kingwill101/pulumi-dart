/// Firmware type
enum FirmwareType {
  valueBios("bios"),
  valueEfi("efi");

  const FirmwareType(this.value);
  final String value;

  static FirmwareType fromValue(String value) {
    for (final item in FirmwareType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirmwareType value: $value');
  }
}

