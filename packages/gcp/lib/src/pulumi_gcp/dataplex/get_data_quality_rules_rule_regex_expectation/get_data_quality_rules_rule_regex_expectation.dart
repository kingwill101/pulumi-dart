// ignore_for_file: unused_element, unnecessary_cast

class GetDataQualityRulesRuleRegexExpectation {
  /// A regular expression the column value is expected to match.
  final String regex;

  GetDataQualityRulesRuleRegexExpectation({
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regex'] = regex;
    return map;
  }

  factory GetDataQualityRulesRuleRegexExpectation.fromMap(
      Map<String, dynamic> map) {
    return GetDataQualityRulesRuleRegexExpectation(
      regex: map['regex'] as String,
    );
  }
}
