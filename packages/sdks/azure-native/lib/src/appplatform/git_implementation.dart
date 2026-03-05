/// Git libraries used to support various repository providers
enum GitImplementation {
  valueGoGit("go-git"),
  valueLibgit2("libgit2");

  const GitImplementation(this.wireValue);
  final String wireValue;

  static GitImplementation fromValue(String value) {
    for (final item in GitImplementation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GitImplementation value: $value');
  }
}

