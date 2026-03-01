/// See RepoType above.
enum GitFileSourceRepoType {
  unknown("UNKNOWN"),
  cloudSourceRepositories("CLOUD_SOURCE_REPOSITORIES"),
  github("GITHUB"),
  bitbucketServer("BITBUCKET_SERVER"),
  gitlab("GITLAB");

  const GitFileSourceRepoType(this.value);
  final String value;

  static GitFileSourceRepoType fromValue(String value) {
    for (final item in GitFileSourceRepoType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GitFileSourceRepoType value: $value');
  }
}
