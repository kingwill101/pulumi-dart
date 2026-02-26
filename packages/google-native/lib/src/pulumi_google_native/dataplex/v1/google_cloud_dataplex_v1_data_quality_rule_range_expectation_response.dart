// ignore_for_file: unused_element, unnecessary_cast

/// Evaluates whether each column value lies between a specified range.
class GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse {
  /// Optional. The maximum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  final String maxValue;

  /// Optional. The minimum column value allowed for a row to pass this validation. At least one of min_value and max_value need to be provided.
  final String minValue;

  /// Optional. Whether each value needs to be strictly lesser than ('<') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  final bool strictMaxEnabled;

  /// Optional. Whether each value needs to be strictly greater than ('>') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  final bool strictMinEnabled;

  GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse({
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

  factory GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleRangeExpectationResponse(
      maxValue: map['maxValue'] as String,
      minValue: map['minValue'] as String,
      strictMaxEnabled: map['strictMaxEnabled'] as bool,
      strictMinEnabled: map['strictMinEnabled'] as bool,
    );
  }
}
