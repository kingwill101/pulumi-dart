// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleTransformHostHeaderRewriteConfigRewriteLb {
  /// Regular expression to match in the input string. Length constraints: Between 1 and 1024 characters.
  final String regex;

  /// Replacement string to use when rewriting the matched input. Capture groups in the regular expression (for example, `$1` and `$2`) can be specified. Length constraints: Between 0 and 1024 characters.
  final String replace;

  ListenerRuleTransformHostHeaderRewriteConfigRewriteLb({
    required this.regex,
    required this.replace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regex'] = regex;
    map['replace'] = replace;
    return map;
  }

  factory ListenerRuleTransformHostHeaderRewriteConfigRewriteLb.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleTransformHostHeaderRewriteConfigRewriteLb(
      regex: map['regex'] as String,
      replace: map['replace'] as String,
    );
  }
}
