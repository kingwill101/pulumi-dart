// ignore_for_file: unused_element, unnecessary_cast

class GetRegionSecurityPolicyRuleMatchExpr {
  /// Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  final String expression;

  /// Creates a new [GetRegionSecurityPolicyRuleMatchExpr].
  /// [expression] Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  GetRegionSecurityPolicyRuleMatchExpr({
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expression'] = expression;
    return map;
  }

  factory GetRegionSecurityPolicyRuleMatchExpr.fromMap(
      Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRuleMatchExpr(
      expression: map['expression'] as String,
    );
  }
}
