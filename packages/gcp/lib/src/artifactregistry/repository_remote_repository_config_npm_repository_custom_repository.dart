// ignore_for_file: unused_element, unnecessary_cast


class RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. `"https://pypi.io"`
  final String? uri;

  /// Creates a new [RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository].
  /// [uri] Specific uri to the registry, e.g. `"https://pypi.io"`
  RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

