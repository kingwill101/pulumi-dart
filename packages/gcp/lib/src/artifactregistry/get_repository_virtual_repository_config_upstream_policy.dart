// ignore_for_file: unused_element, unnecessary_cast


class GetRepositoryVirtualRepositoryConfigUpstreamPolicy {
  /// The user-provided ID of the upstream policy.
  final String id;
  /// Entries with a greater priority value take precedence in the pull order.
  final int priority;
  /// A reference to the repository resource, for example:
  /// "projects/p1/locations/us-central1/repository/repo1".
  final String repository;

  /// Creates a new [GetRepositoryVirtualRepositoryConfigUpstreamPolicy].
  /// [id] The user-provided ID of the upstream policy.
  /// [priority] Entries with a greater priority value take precedence in the pull order.
  /// [repository] A reference to the repository resource, for example:
  GetRepositoryVirtualRepositoryConfigUpstreamPolicy({
    required this.id,
    required this.priority,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'priority': priority,
      'repository': repository,
    };
  }

  factory GetRepositoryVirtualRepositoryConfigUpstreamPolicy.fromMap(Map<String, dynamic> map) {
    return GetRepositoryVirtualRepositoryConfigUpstreamPolicy(
      id: map['id'] as String,
      priority: map['priority'] as int,
      repository: map['repository'] as String,
    );
  }
}

