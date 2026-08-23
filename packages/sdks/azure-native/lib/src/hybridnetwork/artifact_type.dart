/// The artifact type.
enum ArtifactType {
  valueUnknown("Unknown"),
  valueOCIArtifact("OCIArtifact"),
  valueVhdImageFile("VhdImageFile"),
  valueArmTemplate("ArmTemplate"),
  valueImageFile("ImageFile");

  const ArtifactType(this.wireValue);
  final String wireValue;

  static ArtifactType fromValue(String value) {
    for (final item in ArtifactType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactType value: $value');
  }
}
