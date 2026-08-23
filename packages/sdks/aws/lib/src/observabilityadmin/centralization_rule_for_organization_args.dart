// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'centralization_rule_for_organization_rule.dart';
import 'centralization_rule_for_organization_timeouts.dart';

/// {@template pulumi_observabilityadmin_centralization_rule_for_organization_centralization_rule_for_organization_args_doc}
/// The set of arguments for CentralizationRuleForOrganization.
/// {@endtemplate}
/// {@macro pulumi_observabilityadmin_centralization_rule_for_organization_centralization_rule_for_organization_args_doc}
class CentralizationRuleForOrganizationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for the centralization rule. See `rule` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<CentralizationRuleForOrganizationRule> rule;
  /// Name of the centralization rule. Must be unique within the organization.
  final pulumi.Input<String> ruleName;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<CentralizationRuleForOrganizationTimeouts>? timeouts;

  /// Creates a new [CentralizationRuleForOrganizationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Configuration block for the centralization rule. See `rule` below.
  /// [ruleName] Name of the centralization rule. Must be unique within the organization.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const CentralizationRuleForOrganizationArgs({
    this.region,
    required this.rule,
    required this.ruleName,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'rule': pulumi.Input.mapInputValue<CentralizationRuleForOrganizationRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'ruleName': ruleName,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CentralizationRuleForOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: pulumi.Input.fromValue(CentralizationRuleForOrganizationRule.fromMap((map['rule']! as Map).cast<String, dynamic>())),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CentralizationRuleForOrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
