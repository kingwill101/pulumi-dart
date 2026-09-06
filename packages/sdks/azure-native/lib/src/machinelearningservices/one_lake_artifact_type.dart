import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] OneLake artifact type
enum OneLakeArtifactType implements pulumi.PulumiEnum<String> {
  lakeHouse("LakeHouse");

  const OneLakeArtifactType(this.wireValue);
  @override
  final String wireValue;

  static OneLakeArtifactType fromValue(String value) {
    for (final item in OneLakeArtifactType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OneLakeArtifactType value: $value');
  }
}
