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

  /// Creates a new [GetDataQualityRulesRuleRangeExpectation].
  /// [maxValue] The maximum column value allowed for a row to pass this validation.
  /// [minValue] The minimum column value allowed for a row to pass this validation.
  /// [strictMaxEnabled] Whether each value needs to be strictly lesser than ('<') the maximum, or if equality is allowed.
  /// [strictMinEnabled] Whether each value needs to be strictly greater than ('>') the minimum, or if equality is allowed.
  GetDataQualityRulesRuleRangeExpectation({
    required this.maxValue,
    required this.minValue,
    required this.strictMaxEnabled,
    required this.strictMinEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': maxValue,
      'minValue': minValue,
      'strictMaxEnabled': strictMaxEnabled,
      'strictMinEnabled': strictMinEnabled,
    };
  }

  factory GetDataQualityRulesRuleRangeExpectation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataQualityRulesRuleRangeExpectation(
      maxValue: map['maxValue'] as String,
      minValue: map['minValue'] as String,
      strictMaxEnabled: map['strictMaxEnabled'] as bool,
      strictMinEnabled: map['strictMinEnabled'] as bool,
    );
  }
}
