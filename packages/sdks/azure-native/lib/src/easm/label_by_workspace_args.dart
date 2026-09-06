// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_easm_label_by_workspace_args_doc}
/// The set of arguments for LabelByWorkspace.
/// {@endtemplate}
/// {@macro pulumi_easm_label_by_workspace_args_doc}
class LabelByWorkspaceArgs {
  /// Label color.
  final pulumi.Input<String?>? color;
  /// Label display name.
  final pulumi.Input<String?>? displayName;
  /// The name of the Label.
  final pulumi.Input<String?>? labelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [LabelByWorkspaceArgs].
  /// [color] Label color.
  /// [displayName] Label display name.
  /// [labelName] The name of the Label.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the Workspace.
  const LabelByWorkspaceArgs({
    this.color,
    this.displayName,
    this.labelName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'displayName': ?displayName,
      'labelName': ?labelName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory LabelByWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return LabelByWorkspaceArgs(
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelName: (() { final guardedValue = map['labelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
