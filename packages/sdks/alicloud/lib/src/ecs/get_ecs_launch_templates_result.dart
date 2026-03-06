// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_launch_templates_template.dart';

/// Result data returned by getEcsLaunchTemplates.
class GetEcsLaunchTemplatesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The name of the Launch Template.
  final String? launchTemplateName;
  final String? nameRegex;
  /// A list of Launch Template names.
  final List<String> names;
  final String? outputFile;
  final String? templateResourceGroupId;
  /// The tags of the launch template.
  /// &gt; **NOTE:** Except for the fields `id`, `launch_template_id`, `launch_template_name`, `default_version_number`, `latest_version_number`, `created_by`, `modified_time`, `resource_group_id`, `template_tags`, all other fields take effect only if `enable_details` is set to `true`.
  final Map<String, String>? templateTags;
  /// A list of Ecs Launch Templates. Each element contains the following attributes:
  final List<GetEcsLaunchTemplatesTemplate> templates;

  /// Creates a new [GetEcsLaunchTemplatesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [launchTemplateName] The name of the Launch Template.
  /// [nameRegex] Optional.
  /// [names] A list of Launch Template names.
  /// [outputFile] Optional.
  /// [templateResourceGroupId] Optional.
  /// [templateTags] The tags of the launch template.
  /// [templates] A list of Ecs Launch Templates. Each element contains the following attributes:
  const GetEcsLaunchTemplatesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.launchTemplateName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.templateResourceGroupId,
    this.templateTags,
    required this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'launchTemplateName': ?launchTemplateName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'templateResourceGroupId': ?templateResourceGroupId,
      'templateTags': ?templateTags,
      'templates': pulumi.Input.encodeList<GetEcsLaunchTemplatesTemplate, Map<String, dynamic>>(templates, (value) => value.toMap()),
    };
  }

  factory GetEcsLaunchTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetEcsLaunchTemplatesResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      launchTemplateName: (() { final guardedValue = map['launchTemplateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templateResourceGroupId: (() { final guardedValue = map['templateResourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templateTags: (() { final guardedValue = map['templateTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templates: pulumi.Input.decodeList<GetEcsLaunchTemplatesTemplate>(map['templates']!, (value) => GetEcsLaunchTemplatesTemplate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

