// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataQualitySpecRuleRowConditionExpectation {
  /// The SQL expression.
  final String sqlExpression;

  DatascanDataQualitySpecRuleRowConditionExpectation({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sqlExpression'] = sqlExpression;
    return map;
  }

  factory DatascanDataQualitySpecRuleRowConditionExpectation.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleRowConditionExpectation(
      sqlExpression: map['sqlExpression'] as String,
    );
  }
}
