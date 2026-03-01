// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_workflow_args_doc}
/// Arguments for getWorkflow.
/// {@endtemplate}
/// {@macro pulumi_edge_get_workflow_args_doc}
class GetWorkflowArgs {
  /// The name of the Context.
  final pulumi.Input<String> contextName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the workflow
  final pulumi.Input<String> workflowName;

  /// Creates a new [GetWorkflowArgs].
  /// [contextName] The name of the Context.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workflowName] Name of the workflow
  GetWorkflowArgs({
    required pulumi.Output<String> contextName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workflowName,
  }) :
      contextName = pulumi.Input.asInput<String>(contextName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workflowName = pulumi.Input.asInput<String>(workflowName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextName': contextName,
      'resourceGroupName': resourceGroupName,
      'workflowName': workflowName,
    };
  }

  factory GetWorkflowArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowArgs(
      contextName: pulumi.Output.create<String>(map['contextName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workflowName: pulumi.Output.create<String>(map['workflowName'] as String),
    );
  }
}

