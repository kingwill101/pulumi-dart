// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_managed_ruleset_managed_rule.dart';

class WafRuleConfigManagedRuleset {
  final pulumi.Input<String>? action;
  /// The primary attack type targeted by this ruleset.
  final pulumi.Input<int>? attackType;
  /// The individual managed rules included in this ruleset. See `managed_rules` below.
  final pulumi.Input<List<WafRuleConfigManagedRulesetManagedRule>>? managedRules;
  /// Number of rules currently enabled.
  final pulumi.Input<int>? numberEnabled;
  /// Total number of rules in this ruleset.
  final pulumi.Input<int>? numberTotal;
  /// The protection strength level assigned to this ruleset.
  final pulumi.Input<int>? protectionLevel;

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
      'managedRules': ?pulumi.Input.mapOptionalInputValue<List<WafRuleConfigManagedRulesetManagedRule>, List<Map<String, dynamic>>>(managedRules, (value) => pulumi.Input.encodeList<WafRuleConfigManagedRulesetManagedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberEnabled': ?numberEnabled,
      'numberTotal': ?numberTotal,
      'protectionLevel': ?protectionLevel,
    };
  }

  factory WafRuleConfigManagedRuleset.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigManagedRuleset(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      attackType: map['attackType'] == null ? null : (map['attackType'] as int).input(),
      managedRules: map['managedRules'] == null ? null : (pulumi.Input.decodeList<WafRuleConfigManagedRulesetManagedRule>(map['managedRules'], (value) => WafRuleConfigManagedRulesetManagedRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberEnabled: map['numberEnabled'] == null ? null : (map['numberEnabled'] as int).input(),
      numberTotal: map['numberTotal'] == null ? null : (map['numberTotal'] as int).input(),
      protectionLevel: map['protectionLevel'] == null ? null : (map['protectionLevel'] as int).input(),
    );
  }
}

