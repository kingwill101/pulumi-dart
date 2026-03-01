// ignore_for_file: unused_element, unnecessary_cast


class GetRepositoryDockerConfig {
  /// The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  final bool immutableTags;

  /// Creates a new [GetRepositoryDockerConfig].
  /// [immutableTags] The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created.
  GetRepositoryDockerConfig({
    required this.immutableTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immutableTags': immutableTags,
    };
  }

  factory GetRepositoryDockerConfig.fromMap(Map<String, dynamic> map) {
    return GetRepositoryDockerConfig(
      immutableTags: map['immutableTags'] as bool,
    );
  }
}

