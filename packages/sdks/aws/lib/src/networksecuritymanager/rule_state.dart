// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// ARN of the rule.
  final pulumi.Input<String?>? arn;
  /// Firewall configuration of the rule, as a JSON document. The structure depends on `firewallType` and `type`. For an AWS WAF `CONFIGURATION` rule, provide a single web ACL setting, such as `DefaultAction` or `VisibilityConfig`. For an AWS WAF `INSPECTION` rule, provide an AWS WAF rule group. For details, see [Writing rule configurations](https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html) in the AWS Network Security Manager Developer Guide. Changes made to the configuration outside of Terraform are not detected.
  final pulumi.Input<String?>? configuration;
  /// Description of the rule.
  final pulumi.Input<String?>? description;
  /// Firewall type of the rule. Valid values: `WAF`.
  final pulumi.Input<String?>? firewallType;
  /// Whether to publish the rule. When `true`, the rule is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published rule, the draft is saved on top of the published version. Defaults to `true`.
  final pulumi.Input<bool?>? isPublished;
  /// Name of the rule.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Type of the rule. `CONFIGURATION` rules contain firewall settings and `INSPECTION` rules contain rule groups. Valid values: `CONFIGURATION`, `INSPECTION`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? type;

  /// Creates a new [RuleState].
  /// [arn] ARN of the rule.
  /// [configuration] Firewall configuration of the rule, as a JSON document. The structure depends on `firewallType` and `type`. For an AWS WAF `CONFIGURATION` rule, provide a single web ACL setting, such as `DefaultAction` or `VisibilityConfig`. For an AWS WAF `INSPECTION` rule, provide an AWS WAF rule group. For details, see [Writing rule configurations](https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html) in the AWS Network Security Manager Developer Guide. Changes made to the configuration outside of Terraform are not detected.
  /// [description] Description of the rule.
  /// [firewallType] Firewall type of the rule. Valid values: `WAF`.
  /// [isPublished] Whether to publish the rule. When `true`, the rule is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published rule, the draft is saved on top of the published version. Defaults to `true`.
  /// [name] Name of the rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [type] Type of the rule. `CONFIGURATION` rules contain firewall settings and `INSPECTION` rules contain rule groups. Valid values: `CONFIGURATION`, `INSPECTION`.
  const RuleState({
    this.arn,
    this.configuration,
    this.description,
    this.firewallType,
    this.isPublished,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configuration': ?configuration,
      'description': ?description,
      'firewallType': ?firewallType,
      'isPublished': ?isPublished,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallType: (() { final guardedValue = map['firewallType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPublished: (() { final guardedValue = map['isPublished']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
