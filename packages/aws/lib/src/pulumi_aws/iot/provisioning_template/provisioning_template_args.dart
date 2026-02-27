// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../provisioning_template_pre_provisioning_hook/provisioning_template_pre_provisioning_hook.dart';

/// The set of arguments for ProvisioningTemplate.
class ProvisioningTemplateArgs {
  /// The description of the fleet provisioning template.
  final Input<String>? description;

  /// True to enable the fleet provisioning template, otherwise false.
  final Input<bool>? enabled;

  /// The name of the fleet provisioning template.
  final Input<String>? name;

  /// Creates a pre-provisioning hook template. Details below.
  final Input<ProvisioningTemplatePreProvisioningHook>? preProvisioningHook;

  /// The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device.
  final Input<String> provisioningRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The JSON formatted contents of the fleet provisioning template.
  final Input<String> templateBody;

  /// The type you define in a provisioning template.
  final Input<String>? type;

  ProvisioningTemplateArgs({
    this.description,
    this.enabled,
    this.name,
    this.preProvisioningHook,
    required this.provisioningRoleArn,
    this.region,
    this.tags,
    required this.templateBody,
    this.type,
  });

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
      map['preProvisioningHook'] = Input.mapOptionalInputValue<
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
      description: Input.asOptionalInput<String>(map['description']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      name: Input.asOptionalInput<String>(map['name']),
      preProvisioningHook:
          Input.asOptionalInput<ProvisioningTemplatePreProvisioningHook>(
              map['preProvisioningHook']),
      provisioningRoleArn: Input.asInput<String>(map['provisioningRoleArn']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      templateBody: Input.asInput<String>(map['templateBody']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
