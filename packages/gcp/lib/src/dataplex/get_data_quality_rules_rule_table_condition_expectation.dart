// ignore_for_file: unused_element, unnecessary_cast

class GetDataQualityRulesRuleTableConditionExpectation {
  /// The SQL expression.
  final String sqlExpression;

  /// Creates a new [GetDataQualityRulesRuleTableConditionExpectation].
  /// [sqlExpression] The SQL expression.
  GetDataQualityRulesRuleTableConditionExpectation({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sqlExpression': sqlExpression};
  }

  factory GetDataQualityRulesRuleTableConditionExpectation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataQualityRulesRuleTableConditionExpectation(
      sqlExpression: map['sqlExpression'] as String,
    );
  }
}
