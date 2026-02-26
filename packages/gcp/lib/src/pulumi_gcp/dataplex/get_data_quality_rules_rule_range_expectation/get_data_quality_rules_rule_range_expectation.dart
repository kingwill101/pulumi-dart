// ignore_for_file: unused_element, unnecessary_cast

class GetDataQualityRulesRuleRangeExpectation {
  /// The maximum column value allowed for a row to pass this validation.
  final String maxValue;

  /// The minimum column value allowed for a row to pass this validation.
  final String minValue;

  /// Whether each value needs to be strictly lesser than ('<') the maximum, or if equality is allowed.
  final bool strictMaxEnabled;

  /// Whether each value needs to be strictly greater than ('>') the minimum, or if equality is allowed.
  final bool strictMinEnabled;

  GetDataQualityRulesRuleRangeExpectation({
    required this.maxValue,
    required this.minValue,
    required this.strictMaxEnabled,
    required this.strictMinEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxValue'] = maxValue;
    map['minValue'] = minValue;
    map['strictMaxEnabled'] = strictMaxEnabled;
    map['strictMinEnabled'] = strictMinEnabled;
    return map;
  }

  factory GetDataQualityRulesRuleRangeExpectation.fromMap(
      Map<String, dynamic> map) {
    return GetDataQualityRulesRuleRangeExpectation(
      maxValue: map['maxValue'] as String,
      minValue: map['minValue'] as String,
      strictMaxEnabled: map['strictMaxEnabled'] as bool,
      strictMinEnabled: map['strictMinEnabled'] as bool,
    );
  }
}
