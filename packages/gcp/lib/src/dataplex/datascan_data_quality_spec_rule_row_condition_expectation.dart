// ignore_for_file: unused_element, unnecessary_cast


class DatascanDataQualitySpecRuleRowConditionExpectation {
  /// The SQL expression.
  final String sqlExpression;

  /// Creates a new [DatascanDataQualitySpecRuleRowConditionExpectation].
  /// [sqlExpression] The SQL expression.
  DatascanDataQualitySpecRuleRowConditionExpectation({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlExpression': sqlExpression,
    };
  }

  factory DatascanDataQualitySpecRuleRowConditionExpectation.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleRowConditionExpectation(
      sqlExpression: map['sqlExpression'] as String,
    );
  }
}

