// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProjectFleet
class ProjectFleet {
  /// &lt;p&gt;Specifies the compute fleet ARN for the build project.&lt;/p&gt;
  final pulumi.Input<String>? fleetArn;

  /// Creates a new [ProjectFleet].
  /// [fleetArn] &lt;p&gt;Specifies the compute fleet ARN for the build project.&lt;/p&gt;
  ProjectFleet({this.fleetArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fleetArn': ?fleetArn};
  }

  factory ProjectFleet.fromMap(Map<String, dynamic> map) {
    return ProjectFleet(
      fleetArn: (() {
        final guardedValue = map['fleetArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
