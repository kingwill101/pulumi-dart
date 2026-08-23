// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_workflow_v2_args_doc}
/// Arguments for getWorkflowV2.
/// {@endtemplate}
/// {@macro pulumi_edge_get_workflow_v2_args_doc}
class GetWorkflowV2Args {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the workflow
  final pulumi.Input<String> workflowName;

  /// Creates a new [GetWorkflowV2Args].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workflowName] Name of the workflow
  const GetWorkflowV2Args({
    required this.resourceGroupName,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workflowName': workflowName,
    };
  }

  factory GetWorkflowV2Args.fromMap(Map<String, dynamic> map) {
    return GetWorkflowV2Args(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workflowName: pulumi.Input.fromValue(map['workflowName'] as String),
    );
  }
}
