// ignore_for_file: unused_element, unnecessary_cast

class GetDataQualityRulesRuleSetExpectation {
  /// Expected values for the column value.
  final List<String> values;

  /// Creates a new [GetDataQualityRulesRuleSetExpectation].
  /// [values] Expected values for the column value.
  GetDataQualityRulesRuleSetExpectation({required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory GetDataQualityRulesRuleSetExpectation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataQualityRulesRuleSetExpectation(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
