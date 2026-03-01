// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_list_workflow_run_action_repetition_expression_traces_args_doc}
/// Arguments for listWorkflowRunActionRepetitionExpressionTraces.
/// {@endtemplate}
/// {@macro pulumi_logic_list_workflow_run_action_repetition_expression_traces_args_doc}
class ListWorkflowRunActionRepetitionExpressionTracesArgs {
  /// The workflow action name.
  final pulumi.Input<String> actionName;
  /// The workflow repetition.
  final pulumi.Input<String> repetitionName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The workflow run name.
  final pulumi.Input<String> runName;
  /// The workflow name.
  final pulumi.Input<String> workflowName;

  /// Creates a new [ListWorkflowRunActionRepetitionExpressionTracesArgs].
  /// [actionName] The workflow action name.
  /// [repetitionName] The workflow repetition.
  /// [resourceGroupName] The resource group name.
  /// [runName] The workflow run name.
  /// [workflowName] The workflow name.
  ListWorkflowRunActionRepetitionExpressionTracesArgs({
    required String actionName,
    required String repetitionName,
    required String resourceGroupName,
    required String runName,
    required String workflowName,
  }) :
      actionName = pulumi.Input.asInput<String>(actionName),
      repetitionName = pulumi.Input.asInput<String>(repetitionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runName = pulumi.Input.asInput<String>(runName),
      workflowName = pulumi.Input.asInput<String>(workflowName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'repetitionName': repetitionName,
      'resourceGroupName': resourceGroupName,
      'runName': runName,
      'workflowName': workflowName,
    };
  }

  factory ListWorkflowRunActionRepetitionExpressionTracesArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkflowRunActionRepetitionExpressionTracesArgs(
      actionName: map['actionName'] as String,
      repetitionName: map['repetitionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      runName: map['runName'] as String,
      workflowName: map['workflowName'] as String,
    );
  }
}

