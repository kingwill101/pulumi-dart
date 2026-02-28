// ignore_for_file: unused_element, unnecessary_cast

/// Evaluates whether each column value matches a specified regex.
class GoogleCloudDataplexV1DataQualityRuleRegexExpectation {
  /// Optional. A regular expression the column value is expected to match.
  final String? regex;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleRegexExpectation].
  /// [regex] Optional. A regular expression the column value is expected to match.
  GoogleCloudDataplexV1DataQualityRuleRegexExpectation({
    this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue;
    }
    return map;
  }

  factory GoogleCloudDataplexV1DataQualityRuleRegexExpectation.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleRegexExpectation(
      regex: map['regex'] == null ? null : map['regex'] as String,
    );
  }
}
