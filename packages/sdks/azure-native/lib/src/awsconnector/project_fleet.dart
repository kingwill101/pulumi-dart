// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ProjectFleet
class ProjectFleet {
  /// <p>Specifies the compute fleet ARN for the build project.</p>
  final String? fleetArn;

  /// Creates a new [ProjectFleet].
  /// [fleetArn] <p>Specifies the compute fleet ARN for the build project.</p>
  ProjectFleet({
    this.fleetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetArn': ?fleetArn,
    };
  }

  factory ProjectFleet.fromMap(Map<String, dynamic> map) {
    return ProjectFleet(
      fleetArn: map['fleetArn'] == null ? null : map['fleetArn'] as String,
    );
  }
}

