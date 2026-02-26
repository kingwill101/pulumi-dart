// ignore_for_file: unused_element, unnecessary_cast

/// GitLabRepositoryId identifies a specific repository hosted on GitLab.com or GitLabEnterprise
class GitLabRepositoryId {
  /// Identifier for the repository. example: "namespace/project-slug", namespace is usually the username or group ID
  final String id;

  GitLabRepositoryId({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory GitLabRepositoryId.fromMap(Map<String, dynamic> map) {
    return GitLabRepositoryId(
      id: map['id'] as String,
    );
  }
}
