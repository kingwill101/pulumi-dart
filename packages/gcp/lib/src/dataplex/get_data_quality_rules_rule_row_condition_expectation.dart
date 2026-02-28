// ignore_for_file: unused_element, unnecessary_cast


class GetDataQualityRulesRuleRowConditionExpectation {
  /// The SQL expression.
  final String sqlExpression;

  /// Creates a new [GetDataQualityRulesRuleRowConditionExpectation].
  /// [sqlExpression] The SQL expression.
  GetDataQualityRulesRuleRowConditionExpectation({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlExpression': sqlExpression,
    };
  }

  factory GetDataQualityRulesRuleRowConditionExpectation.fromMap(Map<String, dynamic> map) {
    return GetDataQualityRulesRuleRowConditionExpectation(
      sqlExpression: map['sqlExpression'] as String,
    );
  }
}

