/// Property value
enum ArtifactNamespace {
  bUILDID("BUILD_ID"),
  nONE("NONE");

  const ArtifactNamespace(this.value);
  final String value;

  static ArtifactNamespace fromValue(String value) {
    for (final item in ArtifactNamespace.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactNamespace value: $value');
  }
}

