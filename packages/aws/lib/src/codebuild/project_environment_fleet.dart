// ignore_for_file: unused_element, unnecessary_cast

class ProjectEnvironmentFleet {
  /// Compute fleet ARN for the build project.
  final String? fleetArn;

  /// Creates a new [ProjectEnvironmentFleet].
  /// [fleetArn] Compute fleet ARN for the build project.
  ProjectEnvironmentFleet({
    this.fleetArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fleetArnValue = fleetArn;
    if (fleetArnValue != null) {
      map['fleetArn'] = fleetArnValue;
    }
    return map;
  }

  factory ProjectEnvironmentFleet.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentFleet(
      fleetArn: map['fleetArn'] == null ? null : map['fleetArn'] as String,
    );
  }
}
