// ignore_for_file: unused_element, unnecessary_cast

/// Evaluates whether each column value is contained by a specified set.
class GoogleCloudDataplexV1DataQualityRuleSetExpectation {
  /// Optional. Expected values for the column value.
  final List<String>? values;

  GoogleCloudDataplexV1DataQualityRuleSetExpectation({
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory GoogleCloudDataplexV1DataQualityRuleSetExpectation.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleSetExpectation(
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
