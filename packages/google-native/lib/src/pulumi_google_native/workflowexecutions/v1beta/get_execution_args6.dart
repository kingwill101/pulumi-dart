// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getExecution.
class GetExecutionArgs6 {
  final Input<String> executionId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;
  final Input<String> workflowId;

  GetExecutionArgs6({
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

  factory GetExecutionArgs6.fromMap(Map<String, dynamic> map) {
    return GetExecutionArgs6(
      executionId: Input.asInput<String>(map['executionId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
      workflowId: Input.asInput<String>(map['workflowId']),
    );
  }
}
