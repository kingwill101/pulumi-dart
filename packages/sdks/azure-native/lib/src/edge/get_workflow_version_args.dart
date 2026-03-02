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
    required this.contextName,
    required this.resourceGroupName,
    required this.versionName,
    required this.workflowName,
  });

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
      contextName: (map['contextName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      versionName: (map['versionName'] as String).input(),
      workflowName: (map['workflowName'] as String).input(),
    );
  }
}

