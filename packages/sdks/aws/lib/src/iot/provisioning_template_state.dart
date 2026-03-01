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
    pulumi.Output<String>? arn,
    pulumi.Output<int>? defaultVersionId,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? name,
    pulumi.Output<ProvisioningTemplatePreProvisioningHook>? preProvisioningHook,
    pulumi.Output<String>? provisioningRoleArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? templateBody,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      defaultVersionId = pulumi.Input.asOptionalInput<int>(defaultVersionId),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      preProvisioningHook = pulumi.Input.asOptionalInput<ProvisioningTemplatePreProvisioningHook>(preProvisioningHook),
      provisioningRoleArn = pulumi.Input.asOptionalInput<String>(provisioningRoleArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      templateBody = pulumi.Input.asOptionalInput<String>(templateBody),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      defaultVersionId: map['defaultVersionId'] == null ? null : pulumi.Output.create<int>(map['defaultVersionId'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      preProvisioningHook: map['preProvisioningHook'] == null ? null : pulumi.Output.create<ProvisioningTemplatePreProvisioningHook>(ProvisioningTemplatePreProvisioningHook.fromMap((map['preProvisioningHook'] as Map).cast<String, dynamic>())),
      provisioningRoleArn: map['provisioningRoleArn'] == null ? null : pulumi.Output.create<String>(map['provisioningRoleArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      templateBody: map['templateBody'] == null ? null : pulumi.Output.create<String>(map['templateBody'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

