// ignore_for_file: unused_element, unnecessary_cast

class AttachedClusterFleet {
  /// (Output)
  /// The name of the managed Hub Membership resource associated to this
  /// cluster. Membership names are formatted as
  /// projects/<project-number>/locations/global/membership/<cluster-id>.
  final String? membership;

  /// The number of the Fleet host project where this cluster will be registered.
  final String project;

  /// Creates a new [AttachedClusterFleet].
  /// [membership] (Output)
  /// [project] The number of the Fleet host project where this cluster will be registered.
  AttachedClusterFleet({this.membership, required this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'membership': ?membership, 'project': project};
  }

  factory AttachedClusterFleet.fromMap(Map<String, dynamic> map) {
    return AttachedClusterFleet(
      membership: map['membership'] == null
          ? null
          : map['membership'] as String,
      project: map['project'] as String,
    );
  }
}
