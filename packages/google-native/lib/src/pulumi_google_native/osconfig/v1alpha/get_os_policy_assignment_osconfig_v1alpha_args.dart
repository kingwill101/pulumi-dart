// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOsPolicyAssignment.
class GetOsPolicyAssignmentOsconfigV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> osPolicyAssignmentId;
  final pulumi.Input<String>? project;

  GetOsPolicyAssignmentOsconfigV1alphaArgs({
    required this.location,
    required this.osPolicyAssignmentId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['osPolicyAssignmentId'] = osPolicyAssignmentId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetOsPolicyAssignmentOsconfigV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOsPolicyAssignmentOsconfigV1alphaArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      osPolicyAssignmentId:
          pulumi.Input.asInput<String>(map['osPolicyAssignmentId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
