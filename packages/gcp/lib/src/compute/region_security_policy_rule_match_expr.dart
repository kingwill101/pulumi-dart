// ignore_for_file: unused_element, unnecessary_cast


class RegionSecurityPolicyRuleMatchExpr {
  /// Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  final String expression;

  /// Creates a new [RegionSecurityPolicyRuleMatchExpr].
  /// [expression] Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  RegionSecurityPolicyRuleMatchExpr({
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
    };
  }

  factory RegionSecurityPolicyRuleMatchExpr.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyRuleMatchExpr(
      expression: map['expression'] as String,
    );
  }
}

