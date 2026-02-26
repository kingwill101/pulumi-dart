// ignore_for_file: unused_element, unnecessary_cast

class RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. `"https://pypi.io"`
  final String? uri;

  RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository.fromMap(
      Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepository(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
