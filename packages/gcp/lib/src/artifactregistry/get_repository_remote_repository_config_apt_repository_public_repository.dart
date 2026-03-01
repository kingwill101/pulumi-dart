// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository {
  /// A common public repository base for Apt, e.g. '"debian/dists/stable"' Possible values: ["DEBIAN", "UBUNTU", "DEBIAN_SNAPSHOT"]
  final String repositoryBase;

  /// Specific repository from the base.
  final String repositoryPath;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository].
  /// [repositoryBase] A common public repository base for Apt, e.g. '"debian/dists/stable"' Possible values: ["DEBIAN", "UBUNTU", "DEBIAN_SNAPSHOT"]
  /// [repositoryPath] Specific repository from the base.
  GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository({
    required this.repositoryBase,
    required this.repositoryPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryBase': repositoryBase,
      'repositoryPath': repositoryPath,
    };
  }

  factory GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRepositoryRemoteRepositoryConfigAptRepositoryPublicRepository(
      repositoryBase: map['repositoryBase'] as String,
      repositoryPath: map['repositoryPath'] as String,
    );
  }
}
