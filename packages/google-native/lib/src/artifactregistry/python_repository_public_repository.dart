/// One of the publicly available Python repositories supported by Artifact Registry.
enum PythonRepositoryPublicRepository {
  publicRepositoryUnspecified("PUBLIC_REPOSITORY_UNSPECIFIED"),
  pypi("PYPI");

  const PythonRepositoryPublicRepository(this.value);
  final String value;

  static PythonRepositoryPublicRepository fromValue(String value) {
    for (final item in PythonRepositoryPublicRepository.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PythonRepositoryPublicRepository value: $value',
    );
  }
}
