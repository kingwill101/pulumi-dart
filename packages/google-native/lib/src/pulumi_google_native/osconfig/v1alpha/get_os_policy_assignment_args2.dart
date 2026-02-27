// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOsPolicyAssignment.
class GetOsPolicyAssignmentArgs2 {
  final Input<String> location;
  final Input<String> osPolicyAssignmentId;
  final Input<String>? project;

  GetOsPolicyAssignmentArgs2({
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

  factory GetOsPolicyAssignmentArgs2.fromMap(Map<String, dynamic> map) {
    return GetOsPolicyAssignmentArgs2(
      location: Input.asInput<String>(map['location']),
      osPolicyAssignmentId: Input.asInput<String>(map['osPolicyAssignmentId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
