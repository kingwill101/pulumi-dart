// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleGroupStatefulRuleOptions {
  /// Indicates how to manage the order of the rule evaluation for the rule group. Default value: `DEFAULT_ACTION_ORDER`. Valid values: `DEFAULT_ACTION_ORDER`, `STRICT_ORDER`.
  final pulumi.Input<String> ruleOrder;

  /// Creates a new [RuleGroupRuleGroupStatefulRuleOptions].
  /// [ruleOrder] Indicates how to manage the order of the rule evaluation for the rule group. Default value: `DEFAULT_ACTION_ORDER`. Valid values: `DEFAULT_ACTION_ORDER`, `STRICT_ORDER`.
  const RuleGroupRuleGroupStatefulRuleOptions({
    required this.ruleOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleOrder': ruleOrder,
    };
  }

  factory RuleGroupRuleGroupStatefulRuleOptions.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupStatefulRuleOptions(
      ruleOrder: pulumi.Input.fromValue(map['ruleOrder'] as String),
    );
  }
}

