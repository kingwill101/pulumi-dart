/// The artifact type.
enum ArtifactType {
  valueUnknown("Unknown"),
  valueOCIArtifact("OCIArtifact"),
  valueVhdImageFile("VhdImageFile"),
  valueArmTemplate("ArmTemplate"),
  valueImageFile("ImageFile");

  const ArtifactType(this.value);
  final String value;

  static ArtifactType fromValue(String value) {
    for (final item in ArtifactType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactType value: $value');
  }
}

