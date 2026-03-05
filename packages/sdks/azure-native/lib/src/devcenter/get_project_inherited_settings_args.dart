// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_project_inherited_settings_args_doc}
/// Arguments for getProjectInheritedSettings.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_project_inherited_settings_args_doc}
class GetProjectInheritedSettingsArgs {
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProjectInheritedSettingsArgs].
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetProjectInheritedSettingsArgs({
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectInheritedSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectInheritedSettingsArgs(
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

