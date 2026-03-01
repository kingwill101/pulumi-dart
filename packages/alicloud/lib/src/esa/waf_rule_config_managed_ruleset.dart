// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_managed_ruleset_managed_rule.dart';

class WafRuleConfigManagedRuleset {
  final String? action;
  /// The primary attack type targeted by this ruleset.
  final int? attackType;
  /// The individual managed rules included in this ruleset. See `managed_rules` below.
  final List<WafRuleConfigManagedRulesetManagedRule>? managedRules;
  /// Number of rules currently enabled.
  final int? numberEnabled;
  /// Total number of rules in this ruleset.
  final int? numberTotal;
  /// The protection strength level assigned to this ruleset.
  final int? protectionLevel;

  /// Creates a new [WafRuleConfigManagedRuleset].
  /// [action] Optional.
  /// [attackType] The primary attack type targeted by this ruleset.
  /// [managedRules] The individual managed rules included in this ruleset. See `managed_rules` below.
  /// [numberEnabled] Number of rules currently enabled.
  /// [numberTotal] Total number of rules in this ruleset.
  /// [protectionLevel] The protection strength level assigned to this ruleset.
  WafRuleConfigManagedRuleset({
    this.action,
    this.attackType,
    this.managedRules,
    this.numberEnabled,
    this.numberTotal,
    this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'attackType': ?attackType,
      'managedRules': ?managedRules == null ? null : pulumi.Input.encodeList<WafRuleConfigManagedRulesetManagedRule, Map<String, dynamic>>(managedRules!, (value) => value.toMap()),
      'numberEnabled': ?numberEnabled,
      'numberTotal': ?numberTotal,
      'protectionLevel': ?protectionLevel,
    };
  }

  factory WafRuleConfigManagedRuleset.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigManagedRuleset(
      action: map['action'] == null ? null : map['action'] as String,
      attackType: map['attackType'] == null ? null : map['attackType'] as int,
      managedRules: map['managedRules'] == null ? null : pulumi.Input.decodeList<WafRuleConfigManagedRulesetManagedRule>(map['managedRules'], (value) => WafRuleConfigManagedRulesetManagedRule.fromMap((value as Map).cast<String, dynamic>())),
      numberEnabled: map['numberEnabled'] == null ? null : map['numberEnabled'] as int,
      numberTotal: map['numberTotal'] == null ? null : map['numberTotal'] as int,
      protectionLevel: map['protectionLevel'] == null ? null : map['protectionLevel'] as int,
    );
  }
}

