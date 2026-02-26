// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkflow.
class GetWorkflowArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? revisionId;
  final Input<String> workflowId;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      revisionId: Input.asOptionalInput<String>(map['revisionId']),
      workflowId: Input.asInput<String>(map['workflowId']),
    );
  }
}
