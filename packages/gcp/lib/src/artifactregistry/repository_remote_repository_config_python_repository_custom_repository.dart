// ignore_for_file: unused_element, unnecessary_cast

class RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. `"https://pypi.io"`
  final String? uri;

  /// Creates a new [RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository].
  /// [uri] Specific uri to the registry, e.g. `"https://pypi.io"`
  RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository({
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

  factory RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository.fromMap(
      Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
