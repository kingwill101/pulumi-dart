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
  const ListWorkflowRunActionRepetitionExpressionTracesArgs({
    required this.actionName,
    required this.repetitionName,
    required this.resourceGroupName,
    required this.runName,
    required this.workflowName,
  });

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
      actionName: pulumi.Input.fromValue(map['actionName'] as String),
      repetitionName: pulumi.Input.fromValue(map['repetitionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runName: pulumi.Input.fromValue(map['runName'] as String),
      workflowName: pulumi.Input.fromValue(map['workflowName'] as String),
    );
  }
}

