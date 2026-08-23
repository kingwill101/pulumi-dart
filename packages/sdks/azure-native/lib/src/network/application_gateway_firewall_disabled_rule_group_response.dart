// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Allows to disable rules within a rule group or an entire rule group.
class ApplicationGatewayFirewallDisabledRuleGroupResponse {
  /// The name of the rule group that will be disabled.
  final pulumi.Input<String> ruleGroupName;
  /// The list of rules that will be disabled. If null, all rules of the rule group will be disabled.
  final pulumi.Input<List<int>>? rules;

  /// Creates a new [ApplicationGatewayFirewallDisabledRuleGroupResponse].
  /// [ruleGroupName] The name of the rule group that will be disabled.
  /// [rules] The list of rules that will be disabled. If null, all rules of the rule group will be disabled.
  const ApplicationGatewayFirewallDisabledRuleGroupResponse({
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules': ?rules,
    };
  }

  factory ApplicationGatewayFirewallDisabledRuleGroupResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFirewallDisabledRuleGroupResponse(
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}
