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
    this.region,
    this.rule,
    this.ruleArn,
    this.ruleName,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

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
      region: map['region'] == null ? null : (map['region'] as String).input(),
      rule: map['rule'] == null ? null : (CentralizationRuleForOrganizationRule.fromMap((map['rule'] as Map).cast<String, dynamic>())).input(),
      ruleArn: map['ruleArn'] == null ? null : (map['ruleArn'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (CentralizationRuleForOrganizationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

