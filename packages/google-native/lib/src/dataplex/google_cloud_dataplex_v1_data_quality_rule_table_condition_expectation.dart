// ignore_for_file: unused_element, unnecessary_cast

/// Evaluates whether the provided expression is true.The SQL expression needs to use BigQuery standard SQL syntax and should produce a scalar boolean result.Example: MIN(col1) >= 0
class GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation {
  /// Optional. The SQL expression.
  final String? sqlExpression;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation].
  /// [sqlExpression] Optional. The SQL expression.
  GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation({
    this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sqlExpressionValue = sqlExpression;
    if (sqlExpressionValue != null) {
      map['sqlExpression'] = sqlExpressionValue;
    }
    return map;
  }

  factory GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation(
      sqlExpression:
          map['sqlExpression'] == null ? null : map['sqlExpression'] as String,
    );
  }
}
