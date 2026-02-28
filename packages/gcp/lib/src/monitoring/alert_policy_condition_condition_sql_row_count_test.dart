// ignore_for_file: unused_element, unnecessary_cast

class AlertPolicyConditionConditionSqlRowCountTest {
  /// The comparison to apply between the time
  /// series (indicated by filter and aggregation)
  /// and the threshold (indicated by
  /// threshold_value). The comparison is applied
  /// on each time series, with the time series on
  /// the left-hand side and the threshold on the
  /// right-hand side. Only COMPARISON_LT and
  /// COMPARISON_GT are supported currently.
  /// Possible values are: `COMPARISON_GT`, `COMPARISON_GE`, `COMPARISON_LT`, `COMPARISON_LE`, `COMPARISON_EQ`, `COMPARISON_NE`.
  final String comparison;

  /// The value against which to compare the row count.
  final int threshold;

  /// Creates a new [AlertPolicyConditionConditionSqlRowCountTest].
  /// [comparison] The comparison to apply between the time
  /// [threshold] The value against which to compare the row count.
  AlertPolicyConditionConditionSqlRowCountTest({
    required this.comparison,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['threshold'] = threshold;
    return map;
  }

  factory AlertPolicyConditionConditionSqlRowCountTest.fromMap(
      Map<String, dynamic> map) {
    return AlertPolicyConditionConditionSqlRowCountTest(
      comparison: map['comparison'] as String,
      threshold: map['threshold'] as int,
    );
  }
}
