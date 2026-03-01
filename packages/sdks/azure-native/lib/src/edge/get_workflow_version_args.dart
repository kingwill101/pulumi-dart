// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_workflow_version_args_doc}
/// Arguments for getWorkflowVersion.
/// {@endtemplate}
/// {@macro pulumi_edge_get_workflow_version_args_doc}
class GetWorkflowVersionArgs {
  /// The name of the Context.
  final pulumi.Input<String> contextName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workflowVersion.
  final pulumi.Input<String> versionName;
  /// Name of the workflow
  final pulumi.Input<String> workflowName;

  /// Creates a new [GetWorkflowVersionArgs].
  /// [contextName] The name of the Context.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [versionName] The name of the workflowVersion.
  /// [workflowName] Name of the workflow
  GetWorkflowVersionArgs({
    required pulumi.Output<String> contextName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> versionName,
    required pulumi.Output<String> workflowName,
  }) :
      contextName = pulumi.Input.asInput<String>(contextName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      versionName = pulumi.Input.asInput<String>(versionName),
      workflowName = pulumi.Input.asInput<String>(workflowName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextName': contextName,
      'resourceGroupName': resourceGroupName,
      'versionName': versionName,
      'workflowName': workflowName,
    };
  }

  factory GetWorkflowVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowVersionArgs(
      contextName: pulumi.Output.create<String>(map['contextName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      versionName: pulumi.Output.create<String>(map['versionName'] as String),
      workflowName: pulumi.Output.create<String>(map['workflowName'] as String),
    );
  }
}

