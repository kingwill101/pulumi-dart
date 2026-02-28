// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioning_template_pre_provisioning_hook.dart';

/// {@template pulumi_iot_provisioning_template_provisioning_template_args_doc}
/// The set of arguments for ProvisioningTemplate.
/// {@endtemplate}
/// {@macro pulumi_iot_provisioning_template_provisioning_template_args_doc}
class ProvisioningTemplateArgs {
  /// The description of the fleet provisioning template.
  final pulumi.Input<String>? description;

  /// True to enable the fleet provisioning template, otherwise false.
  final pulumi.Input<bool>? enabled;

  /// The name of the fleet provisioning template.
  final pulumi.Input<String>? name;

  /// Creates a pre-provisioning hook template. Details below.
  final pulumi.Input<ProvisioningTemplatePreProvisioningHook>?
      preProvisioningHook;

  /// The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device.
  final pulumi.Input<String> provisioningRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The JSON formatted contents of the fleet provisioning template.
  final pulumi.Input<String> templateBody;

  /// The type you define in a provisioning template.
  final pulumi.Input<String>? type;

  /// Creates a new [ProvisioningTemplateArgs].
  /// [description] The description of the fleet provisioning template.
  /// [enabled] True to enable the fleet provisioning template, otherwise false.
  /// [name] The name of the fleet provisioning template.
  /// [preProvisioningHook] Creates a pre-provisioning hook template. Details below.
  /// [provisioningRoleArn] The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [templateBody] The JSON formatted contents of the fleet provisioning template.
  /// [type] The type you define in a provisioning template.
  ProvisioningTemplateArgs({
    String? description,
    bool? enabled,
    String? name,
    ProvisioningTemplatePreProvisioningHook? preProvisioningHook,
    required String provisioningRoleArn,
    String? region,
    Map<String, String>? tags,
    required String templateBody,
    String? type,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        enabled = pulumi.Input.asOptionalInput<bool>(enabled),
        name = pulumi.Input.asOptionalInput<String>(name),
        preProvisioningHook = pulumi.Input.asOptionalInput<
            ProvisioningTemplatePreProvisioningHook>(preProvisioningHook),
        provisioningRoleArn = pulumi.Input.asInput<String>(provisioningRoleArn),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        templateBody = pulumi.Input.asInput<String>(templateBody),
        type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final preProvisioningHookValue = preProvisioningHook;
    if (preProvisioningHookValue != null) {
      map['preProvisioningHook'] = pulumi.Input.mapOptionalInputValue<
              ProvisioningTemplatePreProvisioningHook, Map<String, dynamic>>(
          preProvisioningHookValue, (value) => value.toMap());
    }
    map['provisioningRoleArn'] = provisioningRoleArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['templateBody'] = templateBody;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ProvisioningTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ProvisioningTemplateArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      preProvisioningHook: map['preProvisioningHook'] == null
          ? null
          : ProvisioningTemplatePreProvisioningHook.fromMap(
              (map['preProvisioningHook'] as Map).cast<String, dynamic>()),
      provisioningRoleArn: map['provisioningRoleArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      templateBody: map['templateBody'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
