/// A common public repository base for Yum.
enum GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryRepositoryBase {
  repositoryBaseUnspecified("REPOSITORY_BASE_UNSPECIFIED"),
  centos("CENTOS"),
  centosDebug("CENTOS_DEBUG"),
  centosVault("CENTOS_VAULT"),
  centosStream("CENTOS_STREAM"),
  rocky("ROCKY"),
  epel("EPEL");

  const GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryRepositoryBase(
      this.value);
  final String value;

  static GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryRepositoryBase
      fromValue(String value) {
    for (final item
        in GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryRepositoryBase
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryRepositoryBase value: $value');
  }
}
