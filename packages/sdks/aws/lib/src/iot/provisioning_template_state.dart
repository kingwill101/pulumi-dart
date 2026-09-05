// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioning_template_pre_provisioning_hook.dart';

/// Input properties used for looking up and filtering ProvisioningTemplate resources.
class ProvisioningTemplateState {
  /// The ARN that identifies the provisioning template.
  final pulumi.Input<String?>? arn;
  /// The default version of the fleet provisioning template.
  final pulumi.Input<int?>? defaultVersionId;
  /// The description of the fleet provisioning template.
  final pulumi.Input<String?>? description;
  /// True to enable the fleet provisioning template, otherwise false.
  final pulumi.Input<bool?>? enabled;
  /// The name of the fleet provisioning template.
  final pulumi.Input<String?>? name;
  /// Creates a pre-provisioning hook template. Details below.
  final pulumi.Input<ProvisioningTemplatePreProvisioningHook?>? preProvisioningHook;
  /// The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device.
  final pulumi.Input<String?>? provisioningRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The JSON formatted contents of the fleet provisioning template.
  final pulumi.Input<String?>? templateBody;
  /// The type you define in a provisioning template.
  final pulumi.Input<String?>? type;

  /// Creates a new [ProvisioningTemplateState].
  /// [arn] The ARN that identifies the provisioning template.
  /// [defaultVersionId] The default version of the fleet provisioning template.
  /// [description] The description of the fleet provisioning template.
  /// [enabled] True to enable the fleet provisioning template, otherwise false.
  /// [name] The name of the fleet provisioning template.
  /// [preProvisioningHook] Creates a pre-provisioning hook template. Details below.
  /// [provisioningRoleArn] The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [templateBody] The JSON formatted contents of the fleet provisioning template.
  /// [type] The type you define in a provisioning template.
  const ProvisioningTemplateState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultVersionId: (() { final guardedValue = map['defaultVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preProvisioningHook: (() { final guardedValue = map['preProvisioningHook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisioningTemplatePreProvisioningHook.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningRoleArn: (() { final guardedValue = map['provisioningRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateBody: (() { final guardedValue = map['templateBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
