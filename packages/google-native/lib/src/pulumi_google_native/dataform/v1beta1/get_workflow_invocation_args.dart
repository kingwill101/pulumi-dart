// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkflowInvocation.
class GetWorkflowInvocationArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> repositoryId;
  final Input<String> workflowInvocationId;

  GetWorkflowInvocationArgs({
    required this.location,
    this.project,
    required this.repositoryId,
    required this.workflowInvocationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    map['workflowInvocationId'] = workflowInvocationId;
    return map;
  }

  factory GetWorkflowInvocationArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowInvocationArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      workflowInvocationId: Input.asInput<String>(map['workflowInvocationId']),
    );
  }
}
