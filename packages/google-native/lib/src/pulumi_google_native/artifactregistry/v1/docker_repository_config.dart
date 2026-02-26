// ignore_for_file: unused_element, unnecessary_cast

/// DockerRepositoryConfig is docker related repository details. Provides additional configuration details for repositories of the docker format type.
class DockerRepositoryConfig {
  /// The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  final bool? immutableTags;

  DockerRepositoryConfig({
    this.immutableTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final immutableTagsValue = immutableTags;
    if (immutableTagsValue != null) {
      map['immutableTags'] = immutableTagsValue;
    }
    return map;
  }

  factory DockerRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return DockerRepositoryConfig(
      immutableTags:
          map['immutableTags'] == null ? null : map['immutableTags'] as bool,
    );
  }
}
