// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleGroupStatefulRuleOptions {
  /// Indicates how to manage the order of the rule evaluation for the rule group. Default value: `DEFAULT_ACTION_ORDER`. Valid values: `DEFAULT_ACTION_ORDER`, `STRICT_ORDER`.
  final String ruleOrder;

  /// Creates a new [RuleGroupRuleGroupStatefulRuleOptions].
  /// [ruleOrder] Indicates how to manage the order of the rule evaluation for the rule group. Default value: `DEFAULT_ACTION_ORDER`. Valid values: `DEFAULT_ACTION_ORDER`, `STRICT_ORDER`.
  RuleGroupRuleGroupStatefulRuleOptions({required this.ruleOrder});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ruleOrder': ruleOrder};
  }

  factory RuleGroupRuleGroupStatefulRuleOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleGroupStatefulRuleOptions(
      ruleOrder: map['ruleOrder'] as String,
    );
  }
}
