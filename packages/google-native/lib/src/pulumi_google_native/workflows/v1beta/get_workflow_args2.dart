// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getWorkflow.
class GetWorkflowArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> workflowId;

  GetWorkflowArgs2({
    required this.location,
    this.project,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workflowId'] = workflowId;
    return map;
  }

  factory GetWorkflowArgs2.fromMap(Map<String, dynamic> map) {
    return GetWorkflowArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      workflowId: Input.asInput<String>(map['workflowId']),
    );
  }
}
