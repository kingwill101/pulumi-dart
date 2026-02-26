// ignore_for_file: unused_element, unnecessary_cast

class GetDataQualityRulesRuleSqlAssertion {
  /// The SQL expression.
  final String sqlStatement;

  GetDataQualityRulesRuleSqlAssertion({
    required this.sqlStatement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sqlStatement'] = sqlStatement;
    return map;
  }

  factory GetDataQualityRulesRuleSqlAssertion.fromMap(
      Map<String, dynamic> map) {
    return GetDataQualityRulesRuleSqlAssertion(
      sqlStatement: map['sqlStatement'] as String,
    );
  }
}
