// ignore_for_file: unused_element, unnecessary_cast


class RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. `"https://pypi.io"`
  final String? uri;

  /// Creates a new [RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository].
  /// [uri] Specific uri to the registry, e.g. `"https://pypi.io"`
  RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

