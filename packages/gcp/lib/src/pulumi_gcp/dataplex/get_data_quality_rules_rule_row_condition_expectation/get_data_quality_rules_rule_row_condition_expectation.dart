// ignore_for_file: unused_element, unnecessary_cast

class GetDataQualityRulesRuleRowConditionExpectation {
  /// The SQL expression.
  final String sqlExpression;

  GetDataQualityRulesRuleRowConditionExpectation({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sqlExpression'] = sqlExpression;
    return map;
  }

  factory GetDataQualityRulesRuleRowConditionExpectation.fromMap(
      Map<String, dynamic> map) {
    return GetDataQualityRulesRuleRowConditionExpectation(
      sqlExpression: map['sqlExpression'] as String,
    );
  }
}
