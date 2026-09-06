import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the patch mode.
enum PatchModeTypes implements pulumi.PulumiEnum<String> {
  valueImageDefault("ImageDefault"),
  valueAutomaticByPlatform("AutomaticByPlatform"),
  valueAutomaticByOS("AutomaticByOS"),
  valueManual("Manual");

  const PatchModeTypes(this.wireValue);
  @override
  final String wireValue;

  static PatchModeTypes fromValue(String value) {
    for (final item in PatchModeTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchModeTypes value: $value');
  }
}
