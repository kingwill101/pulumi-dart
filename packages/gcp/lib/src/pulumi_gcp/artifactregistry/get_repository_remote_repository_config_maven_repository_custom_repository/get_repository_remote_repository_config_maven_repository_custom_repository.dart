// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. '"https://repo.maven.apache.org/maven2"'
  final String uri;

  GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository(
      uri: map['uri'] as String,
    );
  }
}
