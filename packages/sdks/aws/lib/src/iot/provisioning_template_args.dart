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
    return <String, dynamic>{
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'preProvisioningHook':
          ?pulumi.Input.mapOptionalInputValue<
            ProvisioningTemplatePreProvisioningHook,
            Map<String, dynamic>
          >(preProvisioningHook, (value) => value.toMap()),
      'provisioningRoleArn': provisioningRoleArn,
      'region': ?region,
      'tags': ?tags,
      'templateBody': templateBody,
      'type': ?type,
    };
  }

  factory ProvisioningTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ProvisioningTemplateArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preProvisioningHook: (() {
        final guardedValue = map['preProvisioningHook'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProvisioningTemplatePreProvisioningHook.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningRoleArn: pulumi.Input.fromValue(
        map['provisioningRoleArn'] as String,
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      templateBody: pulumi.Input.fromValue(map['templateBody'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
