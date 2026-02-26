// ignore_for_file: unused_element, unnecessary_cast

/// Artifact policy configuration for the repository contents.
class UpstreamPolicy {
  /// The user-provided ID of the upstream policy.
  final String? id;

  /// Entries with a greater priority value take precedence in the pull order.
  final int? priority;

  /// A reference to the repository resource, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  final String? repository;

  UpstreamPolicy({
    this.id,
    this.priority,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final repositoryValue = repository;
    if (repositoryValue != null) {
      map['repository'] = repositoryValue;
    }
    return map;
  }

  factory UpstreamPolicy.fromMap(Map<String, dynamic> map) {
    return UpstreamPolicy(
      id: map['id'] == null ? null : map['id'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      repository:
          map['repository'] == null ? null : map['repository'] as String,
    );
  }
}
