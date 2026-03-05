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
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attackType: (() { final guardedValue = map['attackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      managedRules: (() { final guardedValue = map['managedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafRuleConfigManagedRulesetManagedRule>(guardedValue, (value) => WafRuleConfigManagedRulesetManagedRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      numberEnabled: (() { final guardedValue = map['numberEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numberTotal: (() { final guardedValue = map['numberTotal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protectionLevel: (() { final guardedValue = map['protectionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

