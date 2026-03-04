/// The artifact type.
enum AzureOperatorNexusArtifactType {
  valueUnknown("Unknown"),
  valueImageFile("ImageFile"),
  valueArmTemplate("ArmTemplate");

  const AzureOperatorNexusArtifactType(this.wireValue);
  final String wireValue;

  static AzureOperatorNexusArtifactType fromValue(String value) {
    for (final item in AzureOperatorNexusArtifactType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureOperatorNexusArtifactType value: $value');
  }
}
