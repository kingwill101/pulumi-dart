// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_workflow_access_key_args_doc}
/// Arguments for getWorkflowAccessKey.
/// {@endtemplate}
/// {@macro pulumi_logic_get_workflow_access_key_args_doc}
class GetWorkflowAccessKeyArgs {
  /// The workflow access key name.
  final pulumi.Input<String> accessKeyName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The workflow name.
  final pulumi.Input<String> workflowName;

  /// Creates a new [GetWorkflowAccessKeyArgs].
  /// [accessKeyName] The workflow access key name.
  /// [resourceGroupName] The resource group name.
  /// [workflowName] The workflow name.
  GetWorkflowAccessKeyArgs({
    required pulumi.Output<String> accessKeyName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workflowName,
  }) :
      accessKeyName = pulumi.Input.asInput<String>(accessKeyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workflowName = pulumi.Input.asInput<String>(workflowName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyName': accessKeyName,
      'resourceGroupName': resourceGroupName,
      'workflowName': workflowName,
    };
  }

  factory GetWorkflowAccessKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowAccessKeyArgs(
      accessKeyName: pulumi.Output.create<String>(map['accessKeyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workflowName: pulumi.Output.create<String>(map['workflowName'] as String),
    );
  }
}

