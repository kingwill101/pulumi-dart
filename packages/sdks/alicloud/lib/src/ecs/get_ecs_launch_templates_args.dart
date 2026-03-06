// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_launch_templates_get_ecs_launch_templates_args_doc}
/// Arguments for getEcsLaunchTemplates.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_launch_templates_get_ecs_launch_templates_args_doc}
class GetEcsLaunchTemplatesArgs {
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Launch Template IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of the launch template.
  final pulumi.Input<String>? launchTemplateName;
  /// A regex string to filter results by Launch Template name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the Resource Group.
  final pulumi.Input<String>? templateResourceGroupId;
  /// The tags of the launch template.
  final pulumi.Input<Map<String, String>>? templateTags;

  /// Creates a new [GetEcsLaunchTemplatesArgs].
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Launch Template IDs.
  /// [launchTemplateName] The name of the launch template.
  /// [nameRegex] A regex string to filter results by Launch Template name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [templateResourceGroupId] The ID of the Resource Group.
  /// [templateTags] The tags of the launch template.
  const GetEcsLaunchTemplatesArgs({
    this.enableDetails,
    this.ids,
    this.launchTemplateName,
    this.nameRegex,
    this.outputFile,
    this.templateResourceGroupId,
    this.templateTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'launchTemplateName': ?launchTemplateName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'templateResourceGroupId': ?templateResourceGroupId,
      'templateTags': ?templateTags,
    };
  }

  factory GetEcsLaunchTemplatesArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsLaunchTemplatesArgs(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      launchTemplateName: (() { final guardedValue = map['launchTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateResourceGroupId: (() { final guardedValue = map['templateResourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateTags: (() { final guardedValue = map['templateTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

