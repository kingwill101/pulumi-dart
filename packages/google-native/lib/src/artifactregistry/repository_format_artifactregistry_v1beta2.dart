/// Optional. The format of packages that are stored in the repository.
enum RepositoryFormatArtifactregistryV1beta2 {
  formatUnspecified("FORMAT_UNSPECIFIED"),
  docker("DOCKER"),
  maven("MAVEN"),
  npm("NPM"),
  apt("APT"),
  yum("YUM"),
  googet("GOOGET"),
  python("PYTHON");

  const RepositoryFormatArtifactregistryV1beta2(this.value);
  final String value;

  static RepositoryFormatArtifactregistryV1beta2 fromValue(String value) {
    for (final item in RepositoryFormatArtifactregistryV1beta2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RepositoryFormatArtifactregistryV1beta2 value: $value',
    );
  }
}
