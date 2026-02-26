// ignore_for_file: unused_element, unnecessary_cast

class RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository {
  /// A common public repository base for Yum.
  /// Possible values are: `CENTOS`, `CENTOS_DEBUG`, `CENTOS_VAULT`, `CENTOS_STREAM`, `ROCKY`, `EPEL`.
  final String repositoryBase;

  /// Specific repository from the base, e.g. `"pub/rocky/9/BaseOS/x86_64/os"`
  final String repositoryPath;

  RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository({
    required this.repositoryBase,
    required this.repositoryPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryBase'] = repositoryBase;
    map['repositoryPath'] = repositoryPath;
    return map;
  }

  factory RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository.fromMap(
      Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigAptRepositoryPublicRepository(
      repositoryBase: map['repositoryBase'] as String,
      repositoryPath: map['repositoryPath'] as String,
    );
  }
}
