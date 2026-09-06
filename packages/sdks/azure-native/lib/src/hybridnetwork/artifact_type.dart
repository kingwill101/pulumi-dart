import 'package:pulumi/pulumi.dart' as pulumi;

/// The artifact type.
enum ArtifactType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueOCIArtifact("OCIArtifact"),
  valueVhdImageFile("VhdImageFile"),
  valueArmTemplate("ArmTemplate"),
  valueImageFile("ImageFile");

  const ArtifactType(this.wireValue);
  @override
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
