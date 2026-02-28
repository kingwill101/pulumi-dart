// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workflowexecutions_v1beta_get_execution_workflowexecutions_v1beta_args_doc}
/// Arguments for getExecution.
/// {@endtemplate}
/// {@macro pulumi_workflowexecutions_v1beta_get_execution_workflowexecutions_v1beta_args_doc}
class GetExecutionWorkflowexecutionsV1betaArgs {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> workflowId;

  /// Creates a new [GetExecutionWorkflowexecutionsV1betaArgs].
  /// [executionId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  /// [workflowId] Required.
  GetExecutionWorkflowexecutionsV1betaArgs({
    required String executionId,
    required String location,
    String? project,
    String? view,
    required String workflowId,
  })  : executionId = pulumi.Input.asInput<String>(executionId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        view = pulumi.Input.asOptionalInput<String>(view),
        workflowId = pulumi.Input.asInput<String>(workflowId);

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

  factory GetExecutionWorkflowexecutionsV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetExecutionWorkflowexecutionsV1betaArgs(
      executionId: map['executionId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
      workflowId: map['workflowId'] as String,
    );
  }
}
