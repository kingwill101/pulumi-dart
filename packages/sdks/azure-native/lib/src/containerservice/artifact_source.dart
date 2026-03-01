/// The artifact source. The source where the artifacts are downloaded from.
enum ArtifactSource {
  valueCache("Cache"),
  valueDirect("Direct");

  const ArtifactSource(this.value);
  final String value;

  static ArtifactSource fromValue(String value) {
    for (final item in ArtifactSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactSource value: $value');
  }
}

