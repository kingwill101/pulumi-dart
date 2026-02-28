/// One of the publicly available Npm repositories supported by Artifact Registry.
enum NpmRepositoryPublicRepository {
  publicRepositoryUnspecified("PUBLIC_REPOSITORY_UNSPECIFIED"),
  npmjs("NPMJS");

  const NpmRepositoryPublicRepository(this.value);
  final String value;

  static NpmRepositoryPublicRepository fromValue(String value) {
    for (final item in NpmRepositoryPublicRepository.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NpmRepositoryPublicRepository value: $value');
  }
}

