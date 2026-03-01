// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devhub_get_workflow_args_doc}
/// Arguments for getWorkflow.
/// {@endtemplate}
/// {@macro pulumi_devhub_get_workflow_args_doc}
class GetWorkflowArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workflow resource.
  final pulumi.Input<String> workflowName;

  /// Creates a new [GetWorkflowArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workflowName] The name of the workflow resource.
  GetWorkflowArgs({
    required String resourceGroupName,
    required String workflowName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workflowName = pulumi.Input.asInput<String>(workflowName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workflowName': workflowName,
    };
  }

  factory GetWorkflowArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      workflowName: map['workflowName'] as String,
    );
  }
}

