// ignore_for_file: unused_element, unnecessary_cast


class WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation {
  /// Relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content.
  final int priority;
  /// Transformation to apply, please refer to the Text Transformation [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_TextTransformation.html) for more details.
  final String type;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation].
  /// [priority] Relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content.
  /// [type] Transformation to apply, please refer to the Text Transformation [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_TextTransformation.html) for more details.
  WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation({
    required this.priority,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': priority,
      'type': type,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementTextTransformation(
      priority: map['priority'] as int,
      type: map['type'] as String,
    );
  }
}

