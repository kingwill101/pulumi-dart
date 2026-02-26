// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleMatchHttpMatchHeaderMatchMatch {
  /// Specifies a contains type match.
  final String? contains;

  /// Specifies an exact type match.
  final String? exact;

  /// Specifies a prefix type match.
  /// Matches the value with the prefix.
  final String? prefix;

  ListenerRuleMatchHttpMatchHeaderMatchMatch({
    this.contains,
    this.exact,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containsValue = contains;
    if (containsValue != null) {
      map['contains'] = containsValue;
    }
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

  factory ListenerRuleMatchHttpMatchHeaderMatchMatch.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleMatchHttpMatchHeaderMatchMatch(
      contains: map['contains'] == null ? null : map['contains'] as String,
      exact: map['exact'] == null ? null : map['exact'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
