// ignore_for_file: unused_element, unnecessary_cast

/// Evaluates whether each column value matches a specified regex.
class GoogleCloudDataplexV1DataQualityRuleRegexExpectationResponse {
  /// Optional. A regular expression the column value is expected to match.
  final String regex;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleRegexExpectationResponse].
  /// [regex] Optional. A regular expression the column value is expected to match.
  GoogleCloudDataplexV1DataQualityRuleRegexExpectationResponse({
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regex': regex};
  }

  factory GoogleCloudDataplexV1DataQualityRuleRegexExpectationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1DataQualityRuleRegexExpectationResponse(
      regex: map['regex'] as String,
    );
  }
}
