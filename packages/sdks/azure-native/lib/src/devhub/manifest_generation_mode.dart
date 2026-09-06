import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode of generation to be used for generating Manifest.
enum ManifestGenerationMode implements pulumi.PulumiEnum<String> {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const ManifestGenerationMode(this.wireValue);
  @override
  final String wireValue;

  static ManifestGenerationMode fromValue(String value) {
    for (final item in ManifestGenerationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManifestGenerationMode value: $value');
  }
}
