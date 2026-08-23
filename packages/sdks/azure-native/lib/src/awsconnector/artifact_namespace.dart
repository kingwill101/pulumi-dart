/// Property value
enum ArtifactNamespace {
  bUILDID("BUILD_ID"),
  nONE("NONE");

  const ArtifactNamespace(this.wireValue);
  final String wireValue;

  static ArtifactNamespace fromValue(String value) {
    for (final item in ArtifactNamespace.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactNamespace value: $value');
  }
}
