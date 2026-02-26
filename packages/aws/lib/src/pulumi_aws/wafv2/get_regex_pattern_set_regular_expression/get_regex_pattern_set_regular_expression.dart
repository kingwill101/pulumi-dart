// ignore_for_file: unused_element, unnecessary_cast

class GetRegexPatternSetRegularExpression {
  /// (Required) String representing the regular expression, see the AWS WAF [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-regex-pattern-set-creating.html) for more information.
  final String regexString;

  GetRegexPatternSetRegularExpression({
    required this.regexString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regexString'] = regexString;
    return map;
  }

  factory GetRegexPatternSetRegularExpression.fromMap(
      Map<String, dynamic> map) {
    return GetRegexPatternSetRegularExpression(
      regexString: map['regexString'] as String,
    );
  }
}
