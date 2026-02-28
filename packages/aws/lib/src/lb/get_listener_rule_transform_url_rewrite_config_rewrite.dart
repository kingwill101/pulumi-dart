// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleTransformUrlRewriteConfigRewrite {
  /// Regular expression to match in the input string.
  final String regex;

  /// Replacement string to use when rewriting the matched input.
  final String replace;

  /// Creates a new [GetListenerRuleTransformUrlRewriteConfigRewrite].
  /// [regex] Regular expression to match in the input string.
  /// [replace] Replacement string to use when rewriting the matched input.
  GetListenerRuleTransformUrlRewriteConfigRewrite({
    required this.regex,
    required this.replace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regex'] = regex;
    map['replace'] = replace;
    return map;
  }

  factory GetListenerRuleTransformUrlRewriteConfigRewrite.fromMap(
      Map<String, dynamic> map) {
    return GetListenerRuleTransformUrlRewriteConfigRewrite(
      regex: map['regex'] as String,
      replace: map['replace'] as String,
    );
  }
}
