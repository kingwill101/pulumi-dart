// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataQualitySpecRuleRegexExpectation {
  /// A regular expression the column value is expected to match.
  final String regex;

  /// Creates a new [DatascanDataQualitySpecRuleRegexExpectation].
  /// [regex] A regular expression the column value is expected to match.
  DatascanDataQualitySpecRuleRegexExpectation({
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regex'] = regex;
    return map;
  }

  factory DatascanDataQualitySpecRuleRegexExpectation.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleRegexExpectation(
      regex: map['regex'] as String,
    );
  }
}
