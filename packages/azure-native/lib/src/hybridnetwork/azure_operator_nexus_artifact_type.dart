/// The artifact type.
enum AzureOperatorNexusArtifactType {
  valueUnknown("Unknown"),
  valueImageFile("ImageFile"),
  valueArmTemplate("ArmTemplate");

  const AzureOperatorNexusArtifactType(this.value);
  final String value;

  static AzureOperatorNexusArtifactType fromValue(String value) {
    for (final item in AzureOperatorNexusArtifactType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureOperatorNexusArtifactType value: $value');
  }
}

