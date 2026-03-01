// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_execution_args_doc}
/// Arguments for getExecution.
/// {@endtemplate}
/// {@macro pulumi_edge_get_execution_args_doc}
class GetExecutionArgs {
  /// The name of the Context.
  final pulumi.Input<String> contextName;
  /// The name of the Execution.
  final pulumi.Input<String> executionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workflowVersion.
  final pulumi.Input<String> versionName;
  /// Name of the workflow
  final pulumi.Input<String> workflowName;

  /// Creates a new [GetExecutionArgs].
  /// [contextName] The name of the Context.
  /// [executionName] The name of the Execution.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [versionName] The name of the workflowVersion.
  /// [workflowName] Name of the workflow
  GetExecutionArgs({
    required pulumi.Output<String> contextName,
    required pulumi.Output<String> executionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> versionName,
    required pulumi.Output<String> workflowName,
  }) :
      contextName = pulumi.Input.asInput<String>(contextName),
      executionName = pulumi.Input.asInput<String>(executionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      versionName = pulumi.Input.asInput<String>(versionName),
      workflowName = pulumi.Input.asInput<String>(workflowName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextName': contextName,
      'executionName': executionName,
      'resourceGroupName': resourceGroupName,
      'versionName': versionName,
      'workflowName': workflowName,
    };
  }

  factory GetExecutionArgs.fromMap(Map<String, dynamic> map) {
    return GetExecutionArgs(
      contextName: pulumi.Output.create<String>(map['contextName'] as String),
      executionName: pulumi.Output.create<String>(map['executionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      versionName: pulumi.Output.create<String>(map['versionName'] as String),
      workflowName: pulumi.Output.create<String>(map['workflowName'] as String),
    );
  }
}

