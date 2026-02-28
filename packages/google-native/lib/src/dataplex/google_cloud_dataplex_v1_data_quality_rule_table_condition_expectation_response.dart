// ignore_for_file: unused_element, unnecessary_cast

/// Evaluates whether the provided expression is true.The SQL expression needs to use BigQuery standard SQL syntax and should produce a scalar boolean result.Example: MIN(col1) >= 0
class GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse {
  /// Optional. The SQL expression.
  final String sqlExpression;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse].
  /// [sqlExpression] Optional. The SQL expression.
  GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sqlExpression'] = sqlExpression;
    return map;
  }

  factory GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse(
      sqlExpression: map['sqlExpression'] as String,
    );
  }
}
