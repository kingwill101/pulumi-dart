// ignore_for_file: unused_element, unnecessary_cast

class RepositoryVirtualRepositoryConfigUpstreamPolicy {
  /// The user-provided ID of the upstream policy.
  final String? id;

  /// Entries with a greater priority value take precedence in the pull order.
  final int? priority;

  /// A reference to the repository resource, for example:
  /// "projects/p1/locations/us-central1/repository/repo1".
  final String? repository;

  /// Creates a new [RepositoryVirtualRepositoryConfigUpstreamPolicy].
  /// [id] The user-provided ID of the upstream policy.
  /// [priority] Entries with a greater priority value take precedence in the pull order.
  /// [repository] A reference to the repository resource, for example:
  RepositoryVirtualRepositoryConfigUpstreamPolicy({
    this.id,
    this.priority,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'priority': ?priority,
      'repository': ?repository,
    };
  }

  factory RepositoryVirtualRepositoryConfigUpstreamPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return RepositoryVirtualRepositoryConfigUpstreamPolicy(
      id: map['id'] == null ? null : map['id'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      repository: map['repository'] == null
          ? null
          : map['repository'] as String,
    );
  }
}
