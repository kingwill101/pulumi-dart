// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExecution.
class GetExecutionWorkflowexecutionsV1Args {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> workflowId;

  GetExecutionWorkflowexecutionsV1Args({
    required this.executionId,
    required this.location,
    this.project,
    this.view,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionId'] = executionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    map['workflowId'] = workflowId;
    return map;
  }

  factory GetExecutionWorkflowexecutionsV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetExecutionWorkflowexecutionsV1Args(
      executionId: pulumi.Input.asInput<String>(map['executionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
      workflowId: pulumi.Input.asInput<String>(map['workflowId']),
    );
  }
}
