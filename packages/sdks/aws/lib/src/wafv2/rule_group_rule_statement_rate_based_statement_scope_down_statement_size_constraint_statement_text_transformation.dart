// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation {
  /// The relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content.
  final pulumi.Input<int> priority;
  /// The transformation to apply, please refer to the Text Transformation [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_TextTransformation.html) for more details.
  final pulumi.Input<String> type;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation].
  /// [priority] The relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content.
  /// [type] The transformation to apply, please refer to the Text Transformation [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_TextTransformation.html) for more details.
  const RuleGroupRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation({
    required this.priority,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': priority,
      'type': type,
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementTextTransformation(
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
