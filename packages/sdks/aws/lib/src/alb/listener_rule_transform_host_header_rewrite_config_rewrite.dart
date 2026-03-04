// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleTransformHostHeaderRewriteConfigRewrite {
  /// Regular expression to match in the input string. Length constraints: Between 1 and 1024 characters.
  final pulumi.Input<String> regex;

  /// Replacement string to use when rewriting the matched input. Capture groups in the regular expression (for example, `$1` and `$2`) can be specified. Length constraints: Between 0 and 1024 characters.
  final pulumi.Input<String> replace;

  /// Creates a new [ListenerRuleTransformHostHeaderRewriteConfigRewrite].
  /// [regex] Regular expression to match in the input string. Length constraints: Between 1 and 1024 characters.
  /// [replace] Replacement string to use when rewriting the matched input. Capture groups in the regular expression (for example, `$1` and `$2`) can be specified. Length constraints: Between 0 and 1024 characters.
  ListenerRuleTransformHostHeaderRewriteConfigRewrite({
    required this.regex,
    required this.replace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regex': regex, 'replace': replace};
  }

  factory ListenerRuleTransformHostHeaderRewriteConfigRewrite.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListenerRuleTransformHostHeaderRewriteConfigRewrite(
      regex: pulumi.Input.fromValue(map['regex'] as String),
      replace: pulumi.Input.fromValue(map['replace'] as String),
    );
  }
}
