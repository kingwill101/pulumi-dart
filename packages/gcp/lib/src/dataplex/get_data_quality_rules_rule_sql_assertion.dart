// ignore_for_file: unused_element, unnecessary_cast

class GetDataQualityRulesRuleSqlAssertion {
  /// The SQL expression.
  final String sqlStatement;

  /// Creates a new [GetDataQualityRulesRuleSqlAssertion].
  /// [sqlStatement] The SQL expression.
  GetDataQualityRulesRuleSqlAssertion({required this.sqlStatement});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sqlStatement': sqlStatement};
  }

  factory GetDataQualityRulesRuleSqlAssertion.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataQualityRulesRuleSqlAssertion(
      sqlStatement: map['sqlStatement'] as String,
    );
  }
}
