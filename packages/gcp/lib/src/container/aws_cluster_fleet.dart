// ignore_for_file: unused_element, unnecessary_cast

class AwsClusterFleet {
  /// The name of the managed Hub Membership resource associated to this cluster. Membership names are formatted as projects/<project-number>/locations/global/membership/<cluster-id>.
  final String? membership;

  /// The number of the Fleet host project where this cluster will be registered.
  final String? project;

  /// Creates a new [AwsClusterFleet].
  /// [membership] The name of the managed Hub Membership resource associated to this cluster. Membership names are formatted as projects/<project-number>/locations/global/membership/<cluster-id>.
  /// [project] The number of the Fleet host project where this cluster will be registered.
  AwsClusterFleet({this.membership, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'membership': ?membership, 'project': ?project};
  }

  factory AwsClusterFleet.fromMap(Map<String, dynamic> map) {
    return AwsClusterFleet(
      membership: map['membership'] == null
          ? null
          : map['membership'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
