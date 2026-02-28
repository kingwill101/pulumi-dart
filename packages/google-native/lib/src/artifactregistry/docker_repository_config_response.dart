// ignore_for_file: unused_element, unnecessary_cast

/// DockerRepositoryConfig is docker related repository details. Provides additional configuration details for repositories of the docker format type.
class DockerRepositoryConfigResponse {
  /// The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  final bool immutableTags;

  /// Creates a new [DockerRepositoryConfigResponse].
  /// [immutableTags] The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  DockerRepositoryConfigResponse({
    required this.immutableTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['immutableTags'] = immutableTags;
    return map;
  }

  factory DockerRepositoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return DockerRepositoryConfigResponse(
      immutableTags: map['immutableTags'] as bool,
    );
  }
}
