/// Property value
enum ArtifactPackaging {
  nONE("NONE"),
  zIP("ZIP");

  const ArtifactPackaging(this.wireValue);
  final String wireValue;

  static ArtifactPackaging fromValue(String value) {
    for (final item in ArtifactPackaging.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactPackaging value: $value');
  }
}

