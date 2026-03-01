// ignore_for_file: unused_element, unnecessary_cast

/// Artifact policy configuration for the repository contents.
class UpstreamPolicy {
  /// The user-provided ID of the upstream policy.
  final String? id;

  /// Entries with a greater priority value take precedence in the pull order.
  final int? priority;

  /// A reference to the repository resource, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  final String? repository;

  /// Creates a new [UpstreamPolicy].
  /// [id] The user-provided ID of the upstream policy.
  /// [priority] Entries with a greater priority value take precedence in the pull order.
  /// [repository] A reference to the repository resource, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  UpstreamPolicy({this.id, this.priority, this.repository});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'priority': ?priority,
      'repository': ?repository,
    };
  }

  factory UpstreamPolicy.fromMap(Map<String, dynamic> map) {
    return UpstreamPolicy(
      id: map['id'] == null ? null : map['id'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      repository: map['repository'] == null
          ? null
          : map['repository'] as String,
    );
  }
}
