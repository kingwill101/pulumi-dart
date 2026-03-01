// ignore_for_file: unused_element, unnecessary_cast

/// DockerRepositoryConfig is docker related repository details. Provides additional configuration details for repositories of the docker format type.
class DockerRepositoryConfig {
  /// The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  final bool? immutableTags;

  /// Creates a new [DockerRepositoryConfig].
  /// [immutableTags] The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  DockerRepositoryConfig({this.immutableTags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'immutableTags': ?immutableTags};
  }

  factory DockerRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return DockerRepositoryConfig(
      immutableTags: map['immutableTags'] == null
          ? null
          : map['immutableTags'] as bool,
    );
  }
}
