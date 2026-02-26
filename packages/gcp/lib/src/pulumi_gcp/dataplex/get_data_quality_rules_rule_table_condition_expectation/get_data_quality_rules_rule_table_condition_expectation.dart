// ignore_for_file: unused_element, unnecessary_cast

class GetDataQualityRulesRuleTableConditionExpectation {
  /// The SQL expression.
  final String sqlExpression;

  GetDataQualityRulesRuleTableConditionExpectation({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sqlExpression'] = sqlExpression;
    return map;
  }

  factory GetDataQualityRulesRuleTableConditionExpectation.fromMap(
      Map<String, dynamic> map) {
    return GetDataQualityRulesRuleTableConditionExpectation(
      sqlExpression: map['sqlExpression'] as String,
    );
  }
}
