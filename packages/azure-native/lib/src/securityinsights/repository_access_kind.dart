/// The kind of repository access credentials
enum RepositoryAccessKind {
  valueOAuth("OAuth"),
  valuePAT("PAT"),
  valueApp("App");

  const RepositoryAccessKind(this.value);
  final String value;

  static RepositoryAccessKind fromValue(String value) {
    for (final item in RepositoryAccessKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepositoryAccessKind value: $value');
  }
}

