/// Property value
enum ArtifactsType {
  cODEPIPELINE("CODEPIPELINE"),
  nOARTIFACTS("NO_ARTIFACTS"),
  s3("S3");

  const ArtifactsType(this.value);
  final String value;

  static ArtifactsType fromValue(String value) {
    for (final item in ArtifactsType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactsType value: $value');
  }
}

