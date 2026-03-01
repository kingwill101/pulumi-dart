// ignore_for_file: unused_element, unnecessary_cast

/// Fleet is the fleet configuration for the cluster.
class FleetResponseContainerV1beta1 {
  /// [Output only] The full resource name of the registered fleet membership of the cluster, in the format `//gkehub.googleapis.com/projects/*/locations/*/memberships/*`.
  final String membership;

  /// [Output only] Whether the cluster has been registered through the fleet API.
  final bool preRegistered;

  /// The Fleet host project(project ID or project number) where this cluster will be registered to. This field cannot be changed after the cluster has been registered.
  final String project;

  /// Creates a new [FleetResponseContainerV1beta1].
  /// [membership] [Output only] The full resource name of the registered fleet membership of the cluster, in the format `//gkehub.googleapis.com/projects/*/locations/*/memberships/*`.
  /// [preRegistered] [Output only] Whether the cluster has been registered through the fleet API.
  /// [project] The Fleet host project(project ID or project number) where this cluster will be registered to. This field cannot be changed after the cluster has been registered.
  FleetResponseContainerV1beta1({
    required this.membership,
    required this.preRegistered,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': membership,
      'preRegistered': preRegistered,
      'project': project,
    };
  }

  factory FleetResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return FleetResponseContainerV1beta1(
      membership: map['membership'] as String,
      preRegistered: map['preRegistered'] as bool,
      project: map['project'] as String,
    );
  }
}
