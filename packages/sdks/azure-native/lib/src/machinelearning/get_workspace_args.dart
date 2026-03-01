// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearning_get_workspace_args_doc}
/// Arguments for getWorkspace.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_get_workspace_args_doc}
class GetWorkspaceArgs {
  /// The name of the resource group to which the machine learning workspace belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the machine learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWorkspaceArgs].
  /// [resourceGroupName] The name of the resource group to which the machine learning workspace belongs.
  /// [workspaceName] The name of the machine learning workspace.
  GetWorkspaceArgs({
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

  factory GetWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

