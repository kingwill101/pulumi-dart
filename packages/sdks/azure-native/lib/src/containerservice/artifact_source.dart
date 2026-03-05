/// The artifact source. The source where the artifacts are downloaded from.
enum ArtifactSource {
  valueCache("Cache"),
  valueDirect("Direct");

  const ArtifactSource(this.wireValue);
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

