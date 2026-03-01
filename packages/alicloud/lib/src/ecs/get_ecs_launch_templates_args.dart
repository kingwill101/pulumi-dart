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
  GetEcsLaunchTemplatesArgs({
    bool? enableDetails,
    List<String>? ids,
    String? launchTemplateName,
    String? nameRegex,
    String? outputFile,
    String? templateResourceGroupId,
    Map<String, String>? templateTags,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      launchTemplateName = pulumi.Input.asOptionalInput<String>(launchTemplateName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      templateResourceGroupId = pulumi.Input.asOptionalInput<String>(templateResourceGroupId),
      templateTags = pulumi.Input.asOptionalInput<Map<String, String>>(templateTags);

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
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      launchTemplateName: map['launchTemplateName'] == null ? null : map['launchTemplateName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      templateResourceGroupId: map['templateResourceGroupId'] == null ? null : map['templateResourceGroupId'] as String,
      templateTags: map['templateTags'] == null ? null : (map['templateTags'] as Map).cast<String, String>(),
    );
  }
}

