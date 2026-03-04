// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleTransformUrlRewriteConfigRewrite {
  /// Regular expression to match in the input string.
  final pulumi.Input<String> regex;

  /// Replacement string to use when rewriting the matched input.
  final pulumi.Input<String> replace;

  /// Creates a new [GetListenerRuleTransformUrlRewriteConfigRewrite].
  /// [regex] Regular expression to match in the input string.
  /// [replace] Replacement string to use when rewriting the matched input.
  GetListenerRuleTransformUrlRewriteConfigRewrite({
    required this.regex,
    required this.replace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regex': regex, 'replace': replace};
  }

  factory GetListenerRuleTransformUrlRewriteConfigRewrite.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetListenerRuleTransformUrlRewriteConfigRewrite(
      regex: pulumi.Input.fromValue(map['regex'] as String),
      replace: pulumi.Input.fromValue(map['replace'] as String),
    );
  }
}
