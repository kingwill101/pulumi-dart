// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProjectFleet
class ProjectFleetResponse {
  /// <p>Specifies the compute fleet ARN for the build project.</p>
  final pulumi.Input<String>? fleetArn;

  /// Creates a new [ProjectFleetResponse].
  /// [fleetArn] <p>Specifies the compute fleet ARN for the build project.</p>
  ProjectFleetResponse({
    this.fleetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetArn': ?fleetArn,
    };
  }

  factory ProjectFleetResponse.fromMap(Map<String, dynamic> map) {
    return ProjectFleetResponse(
      fleetArn: map['fleetArn'] == null ? null : (map['fleetArn'] as String).input(),
    );
  }
}

