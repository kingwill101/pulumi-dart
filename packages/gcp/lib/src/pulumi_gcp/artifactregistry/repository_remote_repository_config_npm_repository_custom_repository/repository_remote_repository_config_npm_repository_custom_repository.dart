// ignore_for_file: unused_element, unnecessary_cast

class RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. `"https://pypi.io"`
  final String? uri;

  RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository({
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

  factory RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository.fromMap(
      Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepository(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
