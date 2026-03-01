// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_workspace_setting_args_doc}
/// Arguments for getWorkspaceSetting.
/// {@endtemplate}
/// {@macro pulumi_security_get_workspace_setting_args_doc}
class GetWorkspaceSettingArgs {
  /// Name of the security setting
  final pulumi.Input<String> workspaceSettingName;

  /// Creates a new [GetWorkspaceSettingArgs].
  /// [workspaceSettingName] Name of the security setting
  GetWorkspaceSettingArgs({
    required String workspaceSettingName,
  }) :
      workspaceSettingName = pulumi.Input.asInput<String>(workspaceSettingName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workspaceSettingName': workspaceSettingName,
    };
  }

  factory GetWorkspaceSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceSettingArgs(
      workspaceSettingName: map['workspaceSettingName'] as String,
    );
  }
}

