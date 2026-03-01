// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_easm_get_label_by_workspace_args_doc}
/// Arguments for getLabelByWorkspace.
/// {@endtemplate}
/// {@macro pulumi_easm_get_label_by_workspace_args_doc}
class GetLabelByWorkspaceArgs {
  /// The name of the Label.
  final pulumi.Input<String> labelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetLabelByWorkspaceArgs].
  /// [labelName] The name of the Label.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the Workspace.
  GetLabelByWorkspaceArgs({
    required String labelName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      labelName = pulumi.Input.asInput<String>(labelName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelName': labelName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetLabelByWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetLabelByWorkspaceArgs(
      labelName: map['labelName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

