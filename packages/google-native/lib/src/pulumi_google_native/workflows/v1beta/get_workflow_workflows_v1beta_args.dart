// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkflow.
class GetWorkflowWorkflowsV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workflowId;

  GetWorkflowWorkflowsV1betaArgs({
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

  factory GetWorkflowWorkflowsV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowWorkflowsV1betaArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workflowId: pulumi.Input.asInput<String>(map['workflowId']),
    );
  }
}
