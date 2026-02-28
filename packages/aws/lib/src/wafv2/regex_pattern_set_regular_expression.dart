// ignore_for_file: unused_element, unnecessary_cast

class RegexPatternSetRegularExpression {
  /// The string representing the regular expression, see the AWS WAF [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-regex-pattern-set-creating.html) for more information.
  final String regexString;

  /// Creates a new [RegexPatternSetRegularExpression].
  /// [regexString] The string representing the regular expression, see the AWS WAF [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-regex-pattern-set-creating.html) for more information.
  RegexPatternSetRegularExpression({
    required this.regexString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regexString'] = regexString;
    return map;
  }

  factory RegexPatternSetRegularExpression.fromMap(Map<String, dynamic> map) {
    return RegexPatternSetRegularExpression(
      regexString: map['regexString'] as String,
    );
  }
}
