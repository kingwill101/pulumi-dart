// ignore_for_file: unused_element, unnecessary_cast

/// Evaluates whether the column aggregate statistic lies between a specified range.
class GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse {
  /// Optional. The maximum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  final String maxValue;

  /// Optional. The minimum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  final String minValue;

  /// Optional. The aggregate metric to evaluate.
  final String statistic;

  /// Optional. Whether column statistic needs to be strictly lesser than ('<') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  final bool strictMaxEnabled;

  /// Optional. Whether column statistic needs to be strictly greater than ('>') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  final bool strictMinEnabled;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse].
  /// [maxValue] Optional. The maximum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  /// [minValue] Optional. The minimum column statistic value allowed for a row to pass this validation.At least one of min_value and max_value need to be provided.
  /// [statistic] Optional. The aggregate metric to evaluate.
  /// [strictMaxEnabled] Optional. Whether column statistic needs to be strictly lesser than ('<') the maximum, or if equality is allowed.Only relevant if a max_value has been defined. Default = false.
  /// [strictMinEnabled] Optional. Whether column statistic needs to be strictly greater than ('>') the minimum, or if equality is allowed.Only relevant if a min_value has been defined. Default = false.
  GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse({
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

  factory GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationResponse(
      maxValue: map['maxValue'] as String,
      minValue: map['minValue'] as String,
      statistic: map['statistic'] as String,
      strictMaxEnabled: map['strictMaxEnabled'] as bool,
      strictMinEnabled: map['strictMinEnabled'] as bool,
    );
  }
}
