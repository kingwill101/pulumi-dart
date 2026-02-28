// ignore_for_file: unused_element, unnecessary_cast


class RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. `"https://pypi.io"`
  final String? uri;

  /// Creates a new [RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository].
  /// [uri] Specific uri to the registry, e.g. `"https://pypi.io"`
  RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

