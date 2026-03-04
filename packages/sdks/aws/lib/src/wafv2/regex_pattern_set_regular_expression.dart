// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegexPatternSetRegularExpression {
  /// The string representing the regular expression, see the AWS WAF [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-regex-pattern-set-creating.html) for more information.
  final pulumi.Input<String> regexString;

  /// Creates a new [RegexPatternSetRegularExpression].
  /// [regexString] The string representing the regular expression, see the AWS WAF [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-regex-pattern-set-creating.html) for more information.
  RegexPatternSetRegularExpression({required this.regexString});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regexString': regexString};
  }

  factory RegexPatternSetRegularExpression.fromMap(Map<String, dynamic> map) {
    return RegexPatternSetRegularExpression(
      regexString: pulumi.Input.fromValue(map['regexString'] as String),
    );
  }
}
