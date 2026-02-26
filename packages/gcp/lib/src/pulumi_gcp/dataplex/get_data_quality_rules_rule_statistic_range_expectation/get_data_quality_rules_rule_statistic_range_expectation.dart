// ignore_for_file: unused_element, unnecessary_cast

class GetDataQualityRulesRuleStatisticRangeExpectation {
  /// The maximum column value allowed for a row to pass this validation.
  final String maxValue;

  /// The minimum column value allowed for a row to pass this validation.
  final String minValue;

  /// The list of aggregate metrics a rule can be evaluated against.
  /// Possible values: ["STATISTIC_UNDEFINED", "MEAN", "MIN", "MAX"]
  final String statistic;

  /// Whether each value needs to be strictly lesser than ('<') the maximum, or if equality is allowed.
  final bool strictMaxEnabled;

  /// Whether each value needs to be strictly greater than ('>') the minimum, or if equality is allowed.
  final bool strictMinEnabled;

  GetDataQualityRulesRuleStatisticRangeExpectation({
    required this.maxValue,
    required this.minValue,
    required this.statistic,
    required this.strictMaxEnabled,
    required this.strictMinEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxValue'] = maxValue;
    map['minValue'] = minValue;
    map['statistic'] = statistic;
    map['strictMaxEnabled'] = strictMaxEnabled;
    map['strictMinEnabled'] = strictMinEnabled;
    return map;
  }

  factory GetDataQualityRulesRuleStatisticRangeExpectation.fromMap(
      Map<String, dynamic> map) {
    return GetDataQualityRulesRuleStatisticRangeExpectation(
      maxValue: map['maxValue'] as String,
      minValue: map['minValue'] as String,
      statistic: map['statistic'] as String,
      strictMaxEnabled: map['strictMaxEnabled'] as bool,
      strictMinEnabled: map['strictMinEnabled'] as bool,
    );
  }
}
