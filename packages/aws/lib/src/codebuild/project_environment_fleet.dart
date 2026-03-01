// ignore_for_file: unused_element, unnecessary_cast

class ProjectEnvironmentFleet {
  /// Compute fleet ARN for the build project.
  final String? fleetArn;

  /// Creates a new [ProjectEnvironmentFleet].
  /// [fleetArn] Compute fleet ARN for the build project.
  ProjectEnvironmentFleet({this.fleetArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fleetArn': ?fleetArn};
  }

  factory ProjectEnvironmentFleet.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentFleet(
      fleetArn: map['fleetArn'] == null ? null : map['fleetArn'] as String,
    );
  }
}
