import 'package:pulumi/pulumi.dart' as pulumi;

/// The artifact source. The source where the artifacts are downloaded from.
enum ArtifactSource implements pulumi.PulumiEnum<String> {
  valueCache("Cache"),
  valueDirect("Direct");

  const ArtifactSource(this.wireValue);
  @override
  final String wireValue;

  static ArtifactSource fromValue(String value) {
    for (final item in ArtifactSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactSource value: $value');
  }
}
