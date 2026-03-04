/// The artifact type.
enum AzureArcKubernetesArtifactType {
  valueUnknown("Unknown"),
  valueHelmPackage("HelmPackage");

  const AzureArcKubernetesArtifactType(this.wireValue);
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
