// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a Docker remote repository.
class DockerRepositoryResponse {
  /// One of the publicly available Docker repositories supported by Artifact Registry.
  final String publicRepository;

  /// Creates a new [DockerRepositoryResponse].
  /// [publicRepository] One of the publicly available Docker repositories supported by Artifact Registry.
  DockerRepositoryResponse({
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['publicRepository'] = publicRepository;
    return map;
  }

  factory DockerRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return DockerRepositoryResponse(
      publicRepository: map['publicRepository'] as String,
    );
  }
}
