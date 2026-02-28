// ignore_for_file: unused_element, unnecessary_cast

/// Evaluates whether each column value is contained by a specified set.
class GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse {
  /// Optional. Expected values for the column value.
  final List<String> values;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse].
  /// [values] Optional. Expected values for the column value.
  GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
