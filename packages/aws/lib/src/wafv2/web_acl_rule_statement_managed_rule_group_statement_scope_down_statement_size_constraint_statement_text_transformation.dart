// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatementTextTransformation {
  /// Relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content.
  final int priority;

  /// Transformation to apply, please refer to the Text Transformation [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_TextTransformation.html) for more details.
  final String type;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatementTextTransformation].
  /// [priority] Relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content.
  /// [type] Transformation to apply, please refer to the Text Transformation [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_TextTransformation.html) for more details.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatementTextTransformation({
    required this.priority,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['priority'] = priority;
    map['type'] = type;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatementTextTransformation.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatementTextTransformation(
      priority: map['priority'] as int,
      type: map['type'] as String,
    );
  }
}
