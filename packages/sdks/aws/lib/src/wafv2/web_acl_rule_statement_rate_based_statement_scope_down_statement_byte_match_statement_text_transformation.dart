// ignore_for_file: unused_element, unnecessary_cast


class WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation {
  /// Relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content.
  final int priority;
  /// Transformation to apply, please refer to the Text Transformation [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_TextTransformation.html) for more details.
  final String type;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation].
  /// [priority] Relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content.
  /// [type] Transformation to apply, please refer to the Text Transformation [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_TextTransformation.html) for more details.
  WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation({
    required this.priority,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': priority,
      'type': type,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementTextTransformation(
      priority: map['priority'] as int,
      type: map['type'] as String,
    );
  }
}

