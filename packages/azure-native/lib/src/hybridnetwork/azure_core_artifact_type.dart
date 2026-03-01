/// The artifact type.
enum AzureCoreArtifactType {
  valueUnknown("Unknown"),
  valueVhdImageFile("VhdImageFile"),
  valueArmTemplate("ArmTemplate");

  const AzureCoreArtifactType(this.value);
  final String value;

  static AzureCoreArtifactType fromValue(String value) {
    for (final item in AzureCoreArtifactType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureCoreArtifactType value: $value');
  }
}

