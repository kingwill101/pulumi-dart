import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines the type of manifests to be generated.
enum GenerationManifestType implements pulumi.PulumiEnum<String> {
  valueHelm("helm"),
  valueKube("kube");

  const GenerationManifestType(this.wireValue);
  @override
  final String wireValue;

  static GenerationManifestType fromValue(String value) {
    for (final item in GenerationManifestType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GenerationManifestType value: $value');
  }
}
