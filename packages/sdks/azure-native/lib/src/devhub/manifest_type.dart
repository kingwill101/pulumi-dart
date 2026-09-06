import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines the type of manifests within the repository.
enum ManifestType implements pulumi.PulumiEnum<String> {
  valueHelm("helm"),
  valueKube("kube");

  const ManifestType(this.wireValue);
  @override
  final String wireValue;

  static ManifestType fromValue(String value) {
    for (final item in ManifestType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManifestType value: $value');
  }
}
