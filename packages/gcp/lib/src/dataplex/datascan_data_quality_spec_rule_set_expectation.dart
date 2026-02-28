// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataQualitySpecRuleSetExpectation {
  /// Expected values for the column value.
  final List<String> values;

  /// Creates a new [DatascanDataQualitySpecRuleSetExpectation].
  /// [values] Expected values for the column value.
  DatascanDataQualitySpecRuleSetExpectation({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory DatascanDataQualitySpecRuleSetExpectation.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleSetExpectation(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
