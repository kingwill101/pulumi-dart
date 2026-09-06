import 'package:pulumi/pulumi.dart' as pulumi;

/// The artifact type.
enum AzureOperatorNexusArtifactType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueImageFile("ImageFile"),
  valueArmTemplate("ArmTemplate");

  const AzureOperatorNexusArtifactType(this.wireValue);
  @override
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
