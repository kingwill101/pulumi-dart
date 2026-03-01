// ignore_for_file: unused_element, unnecessary_cast

class GetDataQualityRulesRuleRegexExpectation {
  /// A regular expression the column value is expected to match.
  final String regex;

  /// Creates a new [GetDataQualityRulesRuleRegexExpectation].
  /// [regex] A regular expression the column value is expected to match.
  GetDataQualityRulesRuleRegexExpectation({required this.regex});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regex': regex};
  }

  factory GetDataQualityRulesRuleRegexExpectation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataQualityRulesRuleRegexExpectation(
      regex: map['regex'] as String,
    );
  }
}
