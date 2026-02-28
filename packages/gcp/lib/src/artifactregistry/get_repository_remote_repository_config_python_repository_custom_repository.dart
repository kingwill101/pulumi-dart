// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. '"https://pypi.io"'
  final String uri;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository].
  /// [uri] Specific uri to the registry, e.g. '"https://pypi.io"'
  GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigPythonRepositoryCustomRepository(
      uri: map['uri'] as String,
    );
  }
}
