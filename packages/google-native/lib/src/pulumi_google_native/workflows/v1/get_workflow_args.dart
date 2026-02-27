// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkflow.
class GetWorkflowArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? revisionId;
  final pulumi.Input<String> workflowId;

  GetWorkflowArgs({
    required this.location,
    this.project,
    this.revisionId,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final revisionIdValue = revisionId;
    if (revisionIdValue != null) {
      map['revisionId'] = revisionIdValue;
    }
    map['workflowId'] = workflowId;
    return map;
  }

  factory GetWorkflowArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      revisionId: pulumi.Input.asOptionalInput<String>(map['revisionId']),
      workflowId: pulumi.Input.asInput<String>(map['workflowId']),
    );
  }
}
