// ignore_for_file: unused_element, unnecessary_cast


/// Evaluates whether each column value lies between a specified range.
class GoogleCloudDataplexV1DataQualityRuleRangeExpectation {
  /// Optional. The maximum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  final String? maxValue;
  /// Optional. The minimum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  final String? minValue;
  /// Optional. Whether each value needs to be strictly lesser than ('<') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  final bool? strictMaxEnabled;
  /// Optional. Whether each value needs to be strictly greater than ('>') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  final bool? strictMinEnabled;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleRangeExpectation].
  /// [maxValue] Optional. The maximum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  /// [minValue] Optional. The minimum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  /// [strictMaxEnabled] Optional. Whether each value needs to be strictly lesser than ('<') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  /// [strictMinEnabled] Optional. Whether each value needs to be strictly greater than ('>') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  GoogleCloudDataplexV1DataQualityRuleRangeExpectation({
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

  factory GoogleCloudDataplexV1DataQualityRuleRangeExpectation.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleRangeExpectation(
      maxValue: map['maxValue'] == null ? null : map['maxValue'] as String,
      minValue: map['minValue'] == null ? null : map['minValue'] as String,
      strictMaxEnabled: map['strictMaxEnabled'] == null ? null : map['strictMaxEnabled'] as bool,
      strictMinEnabled: map['strictMinEnabled'] == null ? null : map['strictMinEnabled'] as bool,
    );
  }
}

