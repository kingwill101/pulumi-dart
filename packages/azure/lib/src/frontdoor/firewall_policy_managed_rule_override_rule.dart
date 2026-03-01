// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_managed_rule_override_rule_exclusion.dart';

class FirewallPolicyManagedRuleOverrideRule {
  /// The action to be applied when the rule matches. Possible values are `Allow`, `Block`, `Log`, or `Redirect`.
  final String action;
  /// Is the managed rule override enabled or disabled. Defaults to `false`
  final bool? enabled;
  /// One or more `exclusion` blocks as defined below.
  final List<FirewallPolicyManagedRuleOverrideRuleExclusion>? exclusions;
  /// Identifier for the managed rule.
  final String ruleId;

  /// Creates a new [FirewallPolicyManagedRuleOverrideRule].
  /// [action] The action to be applied when the rule matches. Possible values are `Allow`, `Block`, `Log`, or `Redirect`.
  /// [enabled] Is the managed rule override enabled or disabled. Defaults to `false`
  /// [exclusions] One or more `exclusion` blocks as defined below.
  /// [ruleId] Identifier for the managed rule.
  FirewallPolicyManagedRuleOverrideRule({
    required this.action,
    this.enabled,
    this.exclusions,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'enabled': ?enabled,
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<FirewallPolicyManagedRuleOverrideRuleExclusion, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
      'ruleId': ruleId,
    };
  }

  factory FirewallPolicyManagedRuleOverrideRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyManagedRuleOverrideRule(
      action: map['action'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<FirewallPolicyManagedRuleOverrideRuleExclusion>(map['exclusions'], (value) => FirewallPolicyManagedRuleOverrideRuleExclusion.fromMap((value as Map).cast<String, dynamic>())),
      ruleId: map['ruleId'] as String,
    );
  }
}

