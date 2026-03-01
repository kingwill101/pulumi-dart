// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleMatchExpr {
  /// Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  final String expression;

  /// Creates a new [SecurityPolicyRuleMatchExpr].
  /// [expression] Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  SecurityPolicyRuleMatchExpr({required this.expression});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expression': expression};
  }

  factory SecurityPolicyRuleMatchExpr.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatchExpr(expression: map['expression'] as String);
  }
}
