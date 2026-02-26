// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository {
  /// Specific uri to the registry, e.g. '"https://registry-1.docker.io"'
  final String uri;

  GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigDockerRepositoryCustomRepository(
      uri: map['uri'] as String,
    );
  }
}
