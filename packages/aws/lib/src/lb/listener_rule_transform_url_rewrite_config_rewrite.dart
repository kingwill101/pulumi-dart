// ignore_for_file: unused_element, unnecessary_cast


class ListenerRuleTransformUrlRewriteConfigRewrite {
  /// Regular expression to match in the input string. Length constraints: Between 1 and 1024 characters.
  final String regex;
  /// Replacement string to use when rewriting the matched input. Capture groups in the regular expression (for example, `$1` and `$2`) can be specified. Length constraints: Between 0 and 1024 characters.
  final String replace;

  /// Creates a new [ListenerRuleTransformUrlRewriteConfigRewrite].
  /// [regex] Regular expression to match in the input string. Length constraints: Between 1 and 1024 characters.
  /// [replace] Replacement string to use when rewriting the matched input. Capture groups in the regular expression (for example, `$1` and `$2`) can be specified. Length constraints: Between 0 and 1024 characters.
  ListenerRuleTransformUrlRewriteConfigRewrite({
    required this.regex,
    required this.replace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': regex,
      'replace': replace,
    };
  }

  factory ListenerRuleTransformUrlRewriteConfigRewrite.fromMap(Map<String, dynamic> map) {
    return ListenerRuleTransformUrlRewriteConfigRewrite(
      regex: map['regex'] as String,
      replace: map['replace'] as String,
    );
  }
}

