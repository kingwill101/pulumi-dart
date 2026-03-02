// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioning_template_pre_provisioning_hook.dart';

/// Input properties used for looking up and filtering ProvisioningTemplate resources.
class ProvisioningTemplateState {
  /// The ARN that identifies the provisioning template.
  final pulumi.Input<String>? arn;
  /// The default version of the fleet provisioning template.
  final pulumi.Input<int>? defaultVersionId;
  /// The description of the fleet provisioning template.
  final pulumi.Input<String>? description;
  /// True to enable the fleet provisioning template, otherwise false.
  final pulumi.Input<bool>? enabled;
  /// The name of the fleet provisioning template.
  final pulumi.Input<String>? name;
  /// Creates a pre-provisioning hook template. Details below.
  final pulumi.Input<ProvisioningTemplatePreProvisioningHook>? preProvisioningHook;
  /// The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device.
  final pulumi.Input<String>? provisioningRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The JSON formatted contents of the fleet provisioning template.
  final pulumi.Input<String>? templateBody;
  /// The type you define in a provisioning template.
  final pulumi.Input<String>? type;

  /// Creates a new [ProvisioningTemplateState].
  /// [arn] The ARN that identifies the provisioning template.
  /// [defaultVersionId] The default version of the fleet provisioning template.
  /// [description] The description of the fleet provisioning template.
  /// [enabled] True to enable the fleet provisioning template, otherwise false.
  /// [name] The name of the fleet provisioning template.
  /// [preProvisioningHook] Creates a pre-provisioning hook template. Details below.
  /// [provisioningRoleArn] The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [templateBody] The JSON formatted contents of the fleet provisioning template.
  /// [type] The type you define in a provisioning template.
  ProvisioningTemplateState({
    this.arn,
    this.defaultVersionId,
    this.description,
    this.enabled,
    this.name,
    this.preProvisioningHook,
    this.provisioningRoleArn,
    this.region,
    this.tags,
    this.tagsAll,
    this.templateBody,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultVersionId': ?defaultVersionId,
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'preProvisioningHook': ?pulumi.Input.mapOptionalInputValue<ProvisioningTemplatePreProvisioningHook, Map<String, dynamic>>(preProvisioningHook, (value) => value.toMap()),
      'provisioningRoleArn': ?provisioningRoleArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'templateBody': ?templateBody,
      'type': ?type,
    };
  }

  factory ProvisioningTemplateState.fromMap(Map<String, dynamic> map) {
    return ProvisioningTemplateState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      defaultVersionId: map['defaultVersionId'] == null ? null : (map['defaultVersionId'] as int).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      preProvisioningHook: map['preProvisioningHook'] == null ? null : (ProvisioningTemplatePreProvisioningHook.fromMap((map['preProvisioningHook'] as Map).cast<String, dynamic>())).input(),
      provisioningRoleArn: map['provisioningRoleArn'] == null ? null : (map['provisioningRoleArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      templateBody: map['templateBody'] == null ? null : (map['templateBody'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

