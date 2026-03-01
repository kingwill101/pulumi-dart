// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_linked_workspace_args_doc}
/// Arguments for getLinkedWorkspace.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_linked_workspace_args_doc}
class GetLinkedWorkspaceArgs {
  /// Friendly name of the linked workspace
  final pulumi.Input<String> linkName;
  /// Name of the resource group in which workspace is located.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetLinkedWorkspaceArgs].
  /// [linkName] Friendly name of the linked workspace
  /// [resourceGroupName] Name of the resource group in which workspace is located.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetLinkedWorkspaceArgs({
    required pulumi.Output<String> linkName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      linkName = pulumi.Input.asInput<String>(linkName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkName': linkName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetLinkedWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkedWorkspaceArgs(
      linkName: pulumi.Output.create<String>(map['linkName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

