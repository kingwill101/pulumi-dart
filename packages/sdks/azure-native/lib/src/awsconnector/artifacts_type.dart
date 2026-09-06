import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ArtifactsType implements pulumi.PulumiEnum<String> {
  cODEPIPELINE("CODEPIPELINE"),
  nOARTIFACTS("NO_ARTIFACTS"),
  s3("S3");

  const ArtifactsType(this.wireValue);
  @override
  final String wireValue;

  static ArtifactsType fromValue(String value) {
    for (final item in ArtifactsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactsType value: $value');
  }
}
