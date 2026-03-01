// ignore_for_file: unused_element, unnecessary_cast

class ClusterFleet {
  /// (Output)
  /// The name of the managed Hub Membership resource associated to this cluster.
  /// Membership names are formatted as
  /// `projects/<project-number>/locations/global/membership/<cluster-id>`.
  final String? membership;

  /// The name of the Fleet host project where this cluster will be registered.
  /// Project names are formatted as
  /// `projects/<project-number>`.
  final String project;

  /// Creates a new [ClusterFleet].
  /// [membership] (Output)
  /// [project] The name of the Fleet host project where this cluster will be registered.
  ClusterFleet({this.membership, required this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'membership': ?membership, 'project': project};
  }

  factory ClusterFleet.fromMap(Map<String, dynamic> map) {
    return ClusterFleet(
      membership: map['membership'] == null
          ? null
          : map['membership'] as String,
      project: map['project'] as String,
    );
  }
}
