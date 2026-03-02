// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleTransformHostHeaderRewriteConfigRewrite {
  /// Regular expression to match in the input string.
  final pulumi.Input<String> regex;
  /// Replacement string to use when rewriting the matched input.
  final pulumi.Input<String> replace;

  /// Creates a new [GetListenerRuleTransformHostHeaderRewriteConfigRewrite].
  /// [regex] Regular expression to match in the input string.
  /// [replace] Replacement string to use when rewriting the matched input.
  GetListenerRuleTransformHostHeaderRewriteConfigRewrite({
    required this.regex,
    required this.replace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': regex,
      'replace': replace,
    };
  }

  factory GetListenerRuleTransformHostHeaderRewriteConfigRewrite.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleTransformHostHeaderRewriteConfigRewrite(
      regex: (map['regex'] as String).input(),
      replace: (map['replace'] as String).input(),
    );
  }
}

