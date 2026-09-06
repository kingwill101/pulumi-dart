import 'package:pulumi/pulumi.dart' as pulumi;

/// The artifact type.
enum AzureCoreArtifactType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueVhdImageFile("VhdImageFile"),
  valueArmTemplate("ArmTemplate");

  const AzureCoreArtifactType(this.wireValue);
  @override
  final String wireValue;

  static AzureCoreArtifactType fromValue(String value) {
    for (final item in AzureCoreArtifactType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureCoreArtifactType value: $value');
  }
}
