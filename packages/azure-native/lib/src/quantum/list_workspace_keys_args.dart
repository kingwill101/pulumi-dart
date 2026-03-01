// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quantum_list_workspace_keys_args_doc}
/// Arguments for listWorkspaceKeys.
/// {@endtemplate}
/// {@macro pulumi_quantum_list_workspace_keys_args_doc}
class ListWorkspaceKeysArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the quantum workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListWorkspaceKeysArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the quantum workspace resource.
  ListWorkspaceKeysArgs({
    required String resourceGroupName,
    required String workspaceName,
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
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

