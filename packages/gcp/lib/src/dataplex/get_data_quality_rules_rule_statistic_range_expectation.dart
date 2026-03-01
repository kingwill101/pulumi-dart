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

  /// Creates a new [GetDataQualityRulesRuleStatisticRangeExpectation].
  /// [maxValue] The maximum column value allowed for a row to pass this validation.
  /// [minValue] The minimum column value allowed for a row to pass this validation.
  /// [statistic] The list of aggregate metrics a rule can be evaluated against.
  /// [strictMaxEnabled] Whether each value needs to be strictly lesser than ('<') the maximum, or if equality is allowed.
  /// [strictMinEnabled] Whether each value needs to be strictly greater than ('>') the minimum, or if equality is allowed.
  GetDataQualityRulesRuleStatisticRangeExpectation({
    required this.maxValue,
    required this.minValue,
    required this.statistic,
    required this.strictMaxEnabled,
    required this.strictMinEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': maxValue,
      'minValue': minValue,
      'statistic': statistic,
      'strictMaxEnabled': strictMaxEnabled,
      'strictMinEnabled': strictMinEnabled,
    };
  }

  factory GetDataQualityRulesRuleStatisticRangeExpectation.fromMap(Map<String, dynamic> map) {
    return GetDataQualityRulesRuleStatisticRangeExpectation(
      maxValue: map['maxValue'] as String,
      minValue: map['minValue'] as String,
      statistic: map['statistic'] as String,
      strictMaxEnabled: map['strictMaxEnabled'] as bool,
      strictMinEnabled: map['strictMinEnabled'] as bool,
    );
  }
}

