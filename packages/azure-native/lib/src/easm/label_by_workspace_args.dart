// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_easm_label_by_workspace_args_doc}
/// The set of arguments for LabelByWorkspace.
/// {@endtemplate}
/// {@macro pulumi_easm_label_by_workspace_args_doc}
class LabelByWorkspaceArgs {
  /// Label color.
  final pulumi.Input<String>? color;
  /// Label display name.
  final pulumi.Input<String>? displayName;
  /// The name of the Label.
  final pulumi.Input<String>? labelName;
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
  LabelByWorkspaceArgs({
    String? color,
    String? displayName,
    String? labelName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      color = pulumi.Input.asOptionalInput<String>(color),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labelName = pulumi.Input.asOptionalInput<String>(labelName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      color: map['color'] == null ? null : map['color'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      labelName: map['labelName'] == null ? null : map['labelName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

