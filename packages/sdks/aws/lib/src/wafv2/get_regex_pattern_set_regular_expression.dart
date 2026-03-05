// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegexPatternSetRegularExpression {
  /// (Required) String representing the regular expression, see the AWS WAF [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-regex-pattern-set-creating.html) for more information.
  final pulumi.Input<String> regexString;

  /// Creates a new [GetRegexPatternSetRegularExpression].
  /// [regexString] (Required) String representing the regular expression, see the AWS WAF [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-regex-pattern-set-creating.html) for more information.
  GetRegexPatternSetRegularExpression({
    required this.regexString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexString': regexString,
    };
  }

  factory GetRegexPatternSetRegularExpression.fromMap(Map<String, dynamic> map) {
    return GetRegexPatternSetRegularExpression(
      regexString: pulumi.Input.fromValue(map['regexString'] as String),
    );
  }
}

