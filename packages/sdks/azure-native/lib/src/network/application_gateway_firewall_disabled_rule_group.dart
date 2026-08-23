// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Allows to disable rules within a rule group or an entire rule group.
class ApplicationGatewayFirewallDisabledRuleGroup {
  /// The name of the rule group that will be disabled.
  final pulumi.Input<String> ruleGroupName;
  /// The list of rules that will be disabled. If null, all rules of the rule group will be disabled.
  final pulumi.Input<List<int>>? rules;

  /// Creates a new [ApplicationGatewayFirewallDisabledRuleGroup].
  /// [ruleGroupName] The name of the rule group that will be disabled.
  /// [rules] The list of rules that will be disabled. If null, all rules of the rule group will be disabled.
  const ApplicationGatewayFirewallDisabledRuleGroup({
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules': ?rules,
    };
  }

  factory ApplicationGatewayFirewallDisabledRuleGroup.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFirewallDisabledRuleGroup(
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}
