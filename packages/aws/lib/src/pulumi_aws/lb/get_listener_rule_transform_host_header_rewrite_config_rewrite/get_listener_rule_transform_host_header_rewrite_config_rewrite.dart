// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleTransformHostHeaderRewriteConfigRewrite {
  /// Regular expression to match in the input string.
  final String regex;

  /// Replacement string to use when rewriting the matched input.
  final String replace;

  GetListenerRuleTransformHostHeaderRewriteConfigRewrite({
    required this.regex,
    required this.replace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regex'] = regex;
    map['replace'] = replace;
    return map;
  }

  factory GetListenerRuleTransformHostHeaderRewriteConfigRewrite.fromMap(
      Map<String, dynamic> map) {
    return GetListenerRuleTransformHostHeaderRewriteConfigRewrite(
      regex: map['regex'] as String,
      replace: map['replace'] as String,
    );
  }
}
