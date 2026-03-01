// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataQualitySpecRuleSqlAssertion {
  /// The SQL statement.
  final String sqlStatement;

  /// Creates a new [DatascanDataQualitySpecRuleSqlAssertion].
  /// [sqlStatement] The SQL statement.
  DatascanDataQualitySpecRuleSqlAssertion({required this.sqlStatement});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sqlStatement': sqlStatement};
  }

  factory DatascanDataQualitySpecRuleSqlAssertion.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatascanDataQualitySpecRuleSqlAssertion(
      sqlStatement: map['sqlStatement'] as String,
    );
  }
}
