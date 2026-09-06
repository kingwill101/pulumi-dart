import 'package:pulumi/pulumi.dart' as pulumi;

/// The artifact type.
enum AzureArcKubernetesArtifactType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueHelmPackage("HelmPackage");

  const AzureArcKubernetesArtifactType(this.wireValue);
  @override
  final String wireValue;

  static AzureArcKubernetesArtifactType fromValue(String value) {
    for (final item in AzureArcKubernetesArtifactType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureArcKubernetesArtifactType value: $value');
  }
}
