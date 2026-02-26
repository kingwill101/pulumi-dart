// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataQualitySpecRuleStatisticRangeExpectation {
  /// The maximum column statistic value allowed for a row to pass this validation.
  /// At least one of minValue and maxValue need to be provided.
  final String? maxValue;

  /// The minimum column statistic value allowed for a row to pass this validation.
  /// At least one of minValue and maxValue need to be provided.
  final String? minValue;

  /// column statistics.
  /// Possible values are: `STATISTIC_UNDEFINED`, `MEAN`, `MIN`, `MAX`.
  final String statistic;

  /// Whether column statistic needs to be strictly lesser than ('<') the maximum, or if equality is allowed.
  /// Only relevant if a maxValue has been defined. Default = false.
  final bool? strictMaxEnabled;

  /// Whether column statistic needs to be strictly greater than ('>') the minimum, or if equality is allowed.
  /// Only relevant if a minValue has been defined. Default = false.
  final bool? strictMinEnabled;

  DatascanDataQualitySpecRuleStatisticRangeExpectation({
    this.maxValue,
    this.minValue,
    required this.statistic,
    this.strictMaxEnabled,
    this.strictMinEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxValueValue = maxValue;
    if (maxValueValue != null) {
      map['maxValue'] = maxValueValue;
    }
    final minValueValue = minValue;
    if (minValueValue != null) {
      map['minValue'] = minValueValue;
    }
    map['statistic'] = statistic;
    final strictMaxEnabledValue = strictMaxEnabled;
    if (strictMaxEnabledValue != null) {
      map['strictMaxEnabled'] = strictMaxEnabledValue;
    }
    final strictMinEnabledValue = strictMinEnabled;
    if (strictMinEnabledValue != null) {
      map['strictMinEnabled'] = strictMinEnabledValue;
    }
    return map;
  }

  factory DatascanDataQualitySpecRuleStatisticRangeExpectation.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleStatisticRangeExpectation(
      maxValue: map['maxValue'] == null ? null : map['maxValue'] as String,
      minValue: map['minValue'] == null ? null : map['minValue'] as String,
      statistic: map['statistic'] as String,
      strictMaxEnabled: map['strictMaxEnabled'] == null
          ? null
          : map['strictMaxEnabled'] as bool,
      strictMinEnabled: map['strictMinEnabled'] == null
          ? null
          : map['strictMinEnabled'] as bool,
    );
  }
}
