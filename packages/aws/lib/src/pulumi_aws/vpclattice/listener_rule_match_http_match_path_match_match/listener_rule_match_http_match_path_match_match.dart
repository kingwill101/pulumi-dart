// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleMatchHttpMatchPathMatchMatch {
  /// Specifies an exact type match.
  final String? exact;

  /// Specifies a prefix type match.
  /// Matches the value with the prefix.
  final String? prefix;

  ListenerRuleMatchHttpMatchPathMatchMatch({
    this.exact,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exactValue = exact;
    if (exactValue != null) {
      map['exact'] = exactValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory ListenerRuleMatchHttpMatchPathMatchMatch.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleMatchHttpMatchPathMatchMatch(
      exact: map['exact'] == null ? null : map['exact'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
