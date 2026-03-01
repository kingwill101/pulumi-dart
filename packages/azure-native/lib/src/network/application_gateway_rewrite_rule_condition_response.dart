// ignore_for_file: unused_element, unnecessary_cast


/// Set of conditions in the Rewrite Rule in Application Gateway.
class ApplicationGatewayRewriteRuleConditionResponse {
  /// Setting this parameter to truth value with force the pattern to do a case in-sensitive comparison.
  final bool? ignoreCase;
  /// Setting this value as truth will force to check the negation of the condition given by the user.
  final bool? negate;
  /// The pattern, either fixed string or regular expression, that evaluates the truthfulness of the condition.
  final String? pattern;
  /// The condition parameter of the RewriteRuleCondition.
  final String? variable;

  /// Creates a new [ApplicationGatewayRewriteRuleConditionResponse].
  /// [ignoreCase] Setting this parameter to truth value with force the pattern to do a case in-sensitive comparison.
  /// [negate] Setting this value as truth will force to check the negation of the condition given by the user.
  /// [pattern] The pattern, either fixed string or regular expression, that evaluates the truthfulness of the condition.
  /// [variable] The condition parameter of the RewriteRuleCondition.
  ApplicationGatewayRewriteRuleConditionResponse({
    this.ignoreCase,
    this.negate,
    this.pattern,
    this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreCase': ?ignoreCase,
      'negate': ?negate,
      'pattern': ?pattern,
      'variable': ?variable,
    };
  }

  factory ApplicationGatewayRewriteRuleConditionResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleConditionResponse(
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase'] as bool,
      negate: map['negate'] == null ? null : map['negate'] as bool,
      pattern: map['pattern'] == null ? null : map['pattern'] as String,
      variable: map['variable'] == null ? null : map['variable'] as String,
    );
  }
}

