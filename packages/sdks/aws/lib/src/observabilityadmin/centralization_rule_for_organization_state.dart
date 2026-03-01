// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'centralization_rule_for_organization_rule.dart';
import 'centralization_rule_for_organization_timeouts.dart';

/// Input properties used for looking up and filtering CentralizationRuleForOrganization resources.
class CentralizationRuleForOrganizationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for the centralization rule. See `rule` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<CentralizationRuleForOrganizationRule>? rule;
  /// ARN of the centralization rule.
  final pulumi.Input<String>? ruleArn;
  /// Name of the centralization rule. Must be unique within the organization.
  final pulumi.Input<String>? ruleName;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<CentralizationRuleForOrganizationTimeouts>? timeouts;

  /// Creates a new [CentralizationRuleForOrganizationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Configuration block for the centralization rule. See `rule` below.
  /// [ruleArn] ARN of the centralization rule.
  /// [ruleName] Name of the centralization rule. Must be unique within the organization.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  CentralizationRuleForOrganizationState({
    pulumi.Output<String>? region,
    pulumi.Output<CentralizationRuleForOrganizationRule>? rule,
    pulumi.Output<String>? ruleArn,
    pulumi.Output<String>? ruleName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<CentralizationRuleForOrganizationTimeouts>? timeouts,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      rule = pulumi.Input.asOptionalInput<CentralizationRuleForOrganizationRule>(rule),
      ruleArn = pulumi.Input.asOptionalInput<String>(ruleArn),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<CentralizationRuleForOrganizationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'rule': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'ruleArn': ?ruleArn,
      'ruleName': ?ruleName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CentralizationRuleForOrganizationState.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rule: map['rule'] == null ? null : pulumi.Output.create<CentralizationRuleForOrganizationRule>(CentralizationRuleForOrganizationRule.fromMap((map['rule'] as Map).cast<String, dynamic>())),
      ruleArn: map['ruleArn'] == null ? null : pulumi.Output.create<String>(map['ruleArn'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<CentralizationRuleForOrganizationTimeouts>(CentralizationRuleForOrganizationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

