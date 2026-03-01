// ignore_for_file: unused_element, unnecessary_cast


class GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. '"https://registry.npmjs.org"'
  final String uri;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository].
  /// [uri] Specific uri to the registry, e.g. '"https://registry.npmjs.org"'
  GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository.fromMap(Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository(
      uri: map['uri'] as String,
    );
  }
}

