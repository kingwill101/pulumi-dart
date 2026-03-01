// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataQualitySpecRuleTableConditionExpectation {
  /// The SQL expression.
  final String sqlExpression;

  /// Creates a new [DatascanDataQualitySpecRuleTableConditionExpectation].
  /// [sqlExpression] The SQL expression.
  DatascanDataQualitySpecRuleTableConditionExpectation({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sqlExpression': sqlExpression};
  }

  factory DatascanDataQualitySpecRuleTableConditionExpectation.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatascanDataQualitySpecRuleTableConditionExpectation(
      sqlExpression: map['sqlExpression'] as String,
    );
  }
}
