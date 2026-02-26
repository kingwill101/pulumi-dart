// ignore_for_file: unused_element, unnecessary_cast

class AwsClusterFleet {
  /// The name of the managed Hub Membership resource associated to this cluster. Membership names are formatted as projects/<project-number>/locations/global/membership/<cluster-id>.
  final String? membership;

  /// The number of the Fleet host project where this cluster will be registered.
  final String? project;

  AwsClusterFleet({
    this.membership,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final membershipValue = membership;
    if (membershipValue != null) {
      map['membership'] = membershipValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AwsClusterFleet.fromMap(Map<String, dynamic> map) {
    return AwsClusterFleet(
      membership:
          map['membership'] == null ? null : map['membership'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
