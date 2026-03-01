/// Property value
enum ArtifactPackaging {
  nONE("NONE"),
  zIP("ZIP");

  const ArtifactPackaging(this.value);
  final String value;

  static ArtifactPackaging fromValue(String value) {
    for (final item in ArtifactPackaging.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactPackaging value: $value');
  }
}

