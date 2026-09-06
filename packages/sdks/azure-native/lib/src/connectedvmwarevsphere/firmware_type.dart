import 'package:pulumi/pulumi.dart' as pulumi;

/// Firmware type
enum FirmwareType implements pulumi.PulumiEnum<String> {
  valueBios("bios"),
  valueEfi("efi");

  const FirmwareType(this.wireValue);
  @override
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
