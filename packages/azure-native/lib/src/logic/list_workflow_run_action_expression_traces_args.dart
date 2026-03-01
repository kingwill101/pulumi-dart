// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_list_workflow_run_action_expression_traces_args_doc}
/// Arguments for listWorkflowRunActionExpressionTraces.
/// {@endtemplate}
/// {@macro pulumi_logic_list_workflow_run_action_expression_traces_args_doc}
class ListWorkflowRunActionExpressionTracesArgs {
  /// The workflow action name.
  final pulumi.Input<String> actionName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The workflow run name.
  final pulumi.Input<String> runName;
  /// The workflow name.
  final pulumi.Input<String> workflowName;

  /// Creates a new [ListWorkflowRunActionExpressionTracesArgs].
  /// [actionName] The workflow action name.
  /// [resourceGroupName] The resource group name.
  /// [runName] The workflow run name.
  /// [workflowName] The workflow name.
  ListWorkflowRunActionExpressionTracesArgs({
    required String actionName,
    required String resourceGroupName,
    required String runName,
    required String workflowName,
  }) :
      actionName = pulumi.Input.asInput<String>(actionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runName = pulumi.Input.asInput<String>(runName),
      workflowName = pulumi.Input.asInput<String>(workflowName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'resourceGroupName': resourceGroupName,
      'runName': runName,
      'workflowName': workflowName,
    };
  }

  factory ListWorkflowRunActionExpressionTracesArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkflowRunActionExpressionTracesArgs(
      actionName: map['actionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      runName: map['runName'] as String,
      workflowName: map['workflowName'] as String,
    );
  }
}

