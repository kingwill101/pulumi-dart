// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearning_list_workspace_keys_args_doc}
/// Arguments for listWorkspaceKeys.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_list_workspace_keys_args_doc}
class ListWorkspaceKeysArgs {
  /// The name of the resource group to which the machine learning workspace belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the machine learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListWorkspaceKeysArgs].
  /// [resourceGroupName] The name of the resource group to which the machine learning workspace belongs.
  /// [workspaceName] The name of the machine learning workspace.
  ListWorkspaceKeysArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ListWorkspaceKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceKeysArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

