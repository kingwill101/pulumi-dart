// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_list_workflow_access_key_secret_keys_args_doc}
/// Arguments for listWorkflowAccessKeySecretKeys.
/// {@endtemplate}
/// {@macro pulumi_logic_list_workflow_access_key_secret_keys_args_doc}
class ListWorkflowAccessKeySecretKeysArgs {
  /// The workflow access key name.
  final pulumi.Input<String> accessKeyName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The workflow name.
  final pulumi.Input<String> workflowName;

  /// Creates a new [ListWorkflowAccessKeySecretKeysArgs].
  /// [accessKeyName] The workflow access key name.
  /// [resourceGroupName] The resource group name.
  /// [workflowName] The workflow name.
  const ListWorkflowAccessKeySecretKeysArgs({
    required this.accessKeyName,
    required this.resourceGroupName,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyName': accessKeyName,
      'resourceGroupName': resourceGroupName,
      'workflowName': workflowName,
    };
  }

  factory ListWorkflowAccessKeySecretKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkflowAccessKeySecretKeysArgs(
      accessKeyName: pulumi.Input.fromValue(map['accessKeyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workflowName: pulumi.Input.fromValue(map['workflowName'] as String),
    );
  }
}

