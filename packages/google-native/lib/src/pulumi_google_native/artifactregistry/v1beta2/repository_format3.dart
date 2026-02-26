/// Optional. The format of packages that are stored in the repository.
enum RepositoryFormat3 {
  formatUnspecified("FORMAT_UNSPECIFIED"),
  docker("DOCKER"),
  maven("MAVEN"),
  npm("NPM"),
  apt("APT"),
  yum("YUM"),
  googet("GOOGET"),
  python("PYTHON");

  const RepositoryFormat3(this.value);
  final String value;

  static RepositoryFormat3 fromValue(String value) {
    for (final item in RepositoryFormat3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepositoryFormat3 value: $value');
  }
}
