import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum BootModeValues implements pulumi.PulumiEnum<String> {
  legacyBios("legacy-bios"),
  uefi("uefi"),
  uefiPreferred("uefi-preferred");

  const BootModeValues(this.wireValue);
  @override
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
