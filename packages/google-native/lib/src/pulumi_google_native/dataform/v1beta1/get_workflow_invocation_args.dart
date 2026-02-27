// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkflowInvocation.
class GetWorkflowInvocationArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  final pulumi.Input<String> workflowInvocationId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
      workflowInvocationId:
          pulumi.Input.asInput<String>(map['workflowInvocationId']),
    );
  }
}
