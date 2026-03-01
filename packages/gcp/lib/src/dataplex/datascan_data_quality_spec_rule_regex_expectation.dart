// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataQualitySpecRuleRegexExpectation {
  /// A regular expression the column value is expected to match.
  final String regex;

  /// Creates a new [DatascanDataQualitySpecRuleRegexExpectation].
  /// [regex] A regular expression the column value is expected to match.
  DatascanDataQualitySpecRuleRegexExpectation({required this.regex});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regex': regex};
  }

  factory DatascanDataQualitySpecRuleRegexExpectation.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatascanDataQualitySpecRuleRegexExpectation(
      regex: map['regex'] as String,
    );
  }
}
