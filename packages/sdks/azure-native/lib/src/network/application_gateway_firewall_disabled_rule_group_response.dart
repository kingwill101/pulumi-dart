// ignore_for_file: unused_element, unnecessary_cast


/// Allows to disable rules within a rule group or an entire rule group.
class ApplicationGatewayFirewallDisabledRuleGroupResponse {
  /// The name of the rule group that will be disabled.
  final String ruleGroupName;
  /// The list of rules that will be disabled. If null, all rules of the rule group will be disabled.
  final List<int>? rules;

  /// Creates a new [ApplicationGatewayFirewallDisabledRuleGroupResponse].
  /// [ruleGroupName] The name of the rule group that will be disabled.
  /// [rules] The list of rules that will be disabled. If null, all rules of the rule group will be disabled.
  ApplicationGatewayFirewallDisabledRuleGroupResponse({
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
      ruleGroupName: map['ruleGroupName'] as String,
      rules: map['rules'] == null ? null : (map['rules'] as List).cast<int>(),
    );
  }
}

