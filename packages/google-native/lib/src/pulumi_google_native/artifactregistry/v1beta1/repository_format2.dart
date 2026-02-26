/// Optional. The format of packages that are stored in the repository.
enum RepositoryFormat2 {
  formatUnspecified("FORMAT_UNSPECIFIED"),
  docker("DOCKER"),
  maven("MAVEN"),
  npm("NPM"),
  apt("APT"),
  yum("YUM"),
  googet("GOOGET"),
  python("PYTHON");

  const RepositoryFormat2(this.value);
  final String value;

  static RepositoryFormat2 fromValue(String value) {
    for (final item in RepositoryFormat2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepositoryFormat2 value: $value');
  }
}
