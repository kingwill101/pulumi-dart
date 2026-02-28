// ignore_for_file: unused_element, unnecessary_cast

/// Artifact policy configuration for the repository contents.
class UpstreamPolicyResponse {
  /// Entries with a greater priority value take precedence in the pull order.
  final int priority;

  /// A reference to the repository resource, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  final String repository;

  /// Creates a new [UpstreamPolicyResponse].
  /// [priority] Entries with a greater priority value take precedence in the pull order.
  /// [repository] A reference to the repository resource, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  UpstreamPolicyResponse({
    required this.priority,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['priority'] = priority;
    map['repository'] = repository;
    return map;
  }

  factory UpstreamPolicyResponse.fromMap(Map<String, dynamic> map) {
    return UpstreamPolicyResponse(
      priority: map['priority'] as int,
      repository: map['repository'] as String,
    );
  }
}
