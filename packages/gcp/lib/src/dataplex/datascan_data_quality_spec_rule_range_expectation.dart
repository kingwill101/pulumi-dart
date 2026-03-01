// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataQualitySpecRuleRangeExpectation {
  /// The maximum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided.
  final String? maxValue;

  /// The minimum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided.
  final String? minValue;

  /// Whether each value needs to be strictly lesser than ('<') the maximum, or if equality is allowed.
  /// Only relevant if a maxValue has been defined. Default = false.
  final bool? strictMaxEnabled;

  /// Whether each value needs to be strictly greater than ('>') the minimum, or if equality is allowed.
  /// Only relevant if a minValue has been defined. Default = false.
  final bool? strictMinEnabled;

  /// Creates a new [DatascanDataQualitySpecRuleRangeExpectation].
  /// [maxValue] The maximum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided.
  /// [minValue] The minimum column value allowed for a row to pass this validation. At least one of minValue and maxValue need to be provided.
  /// [strictMaxEnabled] Whether each value needs to be strictly lesser than ('<') the maximum, or if equality is allowed.
  /// [strictMinEnabled] Whether each value needs to be strictly greater than ('>') the minimum, or if equality is allowed.
  DatascanDataQualitySpecRuleRangeExpectation({
    this.maxValue,
    this.minValue,
    this.strictMaxEnabled,
    this.strictMinEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': ?maxValue,
      'minValue': ?minValue,
      'strictMaxEnabled': ?strictMaxEnabled,
      'strictMinEnabled': ?strictMinEnabled,
    };
  }

  factory DatascanDataQualitySpecRuleRangeExpectation.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatascanDataQualitySpecRuleRangeExpectation(
      maxValue: map['maxValue'] == null ? null : map['maxValue'] as String,
      minValue: map['minValue'] == null ? null : map['minValue'] as String,
      strictMaxEnabled: map['strictMaxEnabled'] == null
          ? null
          : map['strictMaxEnabled'] as bool,
      strictMinEnabled: map['strictMinEnabled'] == null
          ? null
          : map['strictMinEnabled'] as bool,
    );
  }
}
