// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProjectFleet
class ProjectFleetResponse {
  /// &lt;p&gt;Specifies the compute fleet ARN for the build project.&lt;/p&gt;
  final pulumi.Input<String?>? fleetArn;

  /// Creates a new [ProjectFleetResponse].
  /// [fleetArn] &lt;p&gt;Specifies the compute fleet ARN for the build project.&lt;/p&gt;
  const ProjectFleetResponse({
    this.fleetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetArn': ?fleetArn,
    };
  }

  factory ProjectFleetResponse.fromMap(Map<String, dynamic> map) {
    return ProjectFleetResponse(
      fleetArn: (() { final guardedValue = map['fleetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
