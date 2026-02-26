// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. '"https://registry.npmjs.org"'
  final String uri;

  GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository(
      uri: map['uri'] as String,
    );
  }
}
