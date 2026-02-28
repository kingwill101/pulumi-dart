/// Optional. The format of packages that are stored in the repository.
enum RepositoryFormat {
  formatUnspecified("FORMAT_UNSPECIFIED"),
  docker("DOCKER"),
  maven("MAVEN"),
  npm("NPM"),
  apt("APT"),
  yum("YUM"),
  googet("GOOGET"),
  python("PYTHON"),
  kfp("KFP"),
  go("GO");

  const RepositoryFormat(this.value);
  final String value;

  static RepositoryFormat fromValue(String value) {
    for (final item in RepositoryFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepositoryFormat value: $value');
  }
}

