// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectEnvironmentFleet {
  /// Compute fleet ARN for the build project.
  final pulumi.Input<String>? fleetArn;

  /// Creates a new [ProjectEnvironmentFleet].
  /// [fleetArn] Compute fleet ARN for the build project.
  const ProjectEnvironmentFleet({
    this.fleetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetArn': ?fleetArn,
    };
  }

  factory ProjectEnvironmentFleet.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentFleet(
      fleetArn: (() { final guardedValue = map['fleetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

