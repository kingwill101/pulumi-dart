// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_execution_v2_args_doc}
/// Arguments for getExecutionV2.
/// {@endtemplate}
/// {@macro pulumi_edge_get_execution_v2_args_doc}
class GetExecutionV2Args {
  /// The name of the ExecutionV2.
  final pulumi.Input<String> executionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the WorkflowVersionV2.
  final pulumi.Input<String> versionName;
  /// Name of the workflow
  final pulumi.Input<String> workflowName;

  /// Creates a new [GetExecutionV2Args].
  /// [executionName] The name of the ExecutionV2.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [versionName] The name of the WorkflowVersionV2.
  /// [workflowName] Name of the workflow
  const GetExecutionV2Args({
    required this.executionName,
    required this.resourceGroupName,
    required this.versionName,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionName': executionName,
      'resourceGroupName': resourceGroupName,
      'versionName': versionName,
      'workflowName': workflowName,
    };
  }

  factory GetExecutionV2Args.fromMap(Map<String, dynamic> map) {
    return GetExecutionV2Args(
      executionName: pulumi.Input.fromValue(map['executionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      versionName: pulumi.Input.fromValue(map['versionName'] as String),
      workflowName: pulumi.Input.fromValue(map['workflowName'] as String),
    );
  }
}
