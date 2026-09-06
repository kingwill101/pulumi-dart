import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum InstanceBootModeValues implements pulumi.PulumiEnum<String> {
  legacyBios("legacy-bios"),
  uefi("uefi");

  const InstanceBootModeValues(this.wireValue);
  @override
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
