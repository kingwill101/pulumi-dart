// ignore_for_file: unused_element, unnecessary_cast


class GetSecurityPolicyRuleMatchExpr {
  /// Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  final String expression;

  /// Creates a new [GetSecurityPolicyRuleMatchExpr].
  /// [expression] Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  GetSecurityPolicyRuleMatchExpr({
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
    };
  }

  factory GetSecurityPolicyRuleMatchExpr.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRuleMatchExpr(
      expression: map['expression'] as String,
    );
  }
}

