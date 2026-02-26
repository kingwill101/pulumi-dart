// ignore_for_file: unused_element, unnecessary_cast

/// Publicly available Yum repositories constructed from a common repository base and a custom repository path.
class GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse {
  /// A common public repository base for Yum.
  final String repositoryBase;

  /// A custom field to define a path to a specific repository from the base.
  final String repositoryPath;

  GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse({
    required this.repositoryBase,
    required this.repositoryPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryBase'] = repositoryBase;
    map['repositoryPath'] = repositoryPath;
    return map;
  }

  factory GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsArtifactregistryV1RemoteRepositoryConfigYumRepositoryPublicRepositoryResponse(
      repositoryBase: map['repositoryBase'] as String,
      repositoryPath: map['repositoryPath'] as String,
    );
  }
}
