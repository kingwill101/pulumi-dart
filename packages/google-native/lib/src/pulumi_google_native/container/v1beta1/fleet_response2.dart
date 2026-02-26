// ignore_for_file: unused_element, unnecessary_cast

/// Fleet is the fleet configuration for the cluster.
class FleetResponse2 {
  /// [Output only] The full resource name of the registered fleet membership of the cluster, in the format `//gkehub.googleapis.com/projects/*/locations/*/memberships/*`.
  final String membership;

  /// [Output only] Whether the cluster has been registered through the fleet API.
  final bool preRegistered;

  /// The Fleet host project(project ID or project number) where this cluster will be registered to. This field cannot be changed after the cluster has been registered.
  final String project;

  FleetResponse2({
    required this.membership,
    required this.preRegistered,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['membership'] = membership;
    map['preRegistered'] = preRegistered;
    map['project'] = project;
    return map;
  }

  factory FleetResponse2.fromMap(Map<String, dynamic> map) {
    return FleetResponse2(
      membership: map['membership'] as String,
      preRegistered: map['preRegistered'] as bool,
      project: map['project'] as String,
    );
  }
}
