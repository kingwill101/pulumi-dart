import 'package:pulumi/pulumi.dart' as pulumi;

/// Patching mode for the container app. Null or default in this field will be interpreted as Automatic by RP. Automatic mode will automatically apply available patches. Manual mode will require the user to manually apply patches. Disabled mode will stop patch detection and auto patching.
enum PatchingMode implements pulumi.PulumiEnum<String> {
  valueAutomatic("Automatic"),
  valueManual("Manual"),
  valueDisabled("Disabled");

  const PatchingMode(this.wireValue);
  @override
  final String wireValue;

  static PatchingMode fromValue(String value) {
    for (final item in PatchingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchingMode value: $value');
  }
}
