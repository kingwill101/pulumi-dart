// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_workflow_version_v2_args_doc}
/// Arguments for getWorkflowVersionV2.
/// {@endtemplate}
/// {@macro pulumi_edge_get_workflow_version_v2_args_doc}
class GetWorkflowVersionV2Args {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the WorkflowVersionV2.
  final pulumi.Input<String> versionName;
  /// Name of the workflow
  final pulumi.Input<String> workflowName;

  /// Creates a new [GetWorkflowVersionV2Args].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [versionName] The name of the WorkflowVersionV2.
  /// [workflowName] Name of the workflow
  const GetWorkflowVersionV2Args({
    required this.resourceGroupName,
    required this.versionName,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'versionName': versionName,
      'workflowName': workflowName,
    };
  }

  factory GetWorkflowVersionV2Args.fromMap(Map<String, dynamic> map) {
    return GetWorkflowVersionV2Args(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      versionName: pulumi.Input.fromValue(map['versionName'] as String),
      workflowName: pulumi.Input.fromValue(map['workflowName'] as String),
    );
  }
}
