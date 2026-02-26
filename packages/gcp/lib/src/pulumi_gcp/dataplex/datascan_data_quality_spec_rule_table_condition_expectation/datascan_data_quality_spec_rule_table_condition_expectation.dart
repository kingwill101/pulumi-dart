// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataQualitySpecRuleTableConditionExpectation {
  /// The SQL expression.
  final String sqlExpression;

  DatascanDataQualitySpecRuleTableConditionExpectation({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sqlExpression'] = sqlExpression;
    return map;
  }

  factory DatascanDataQualitySpecRuleTableConditionExpectation.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleTableConditionExpectation(
      sqlExpression: map['sqlExpression'] as String,
    );
  }
}
