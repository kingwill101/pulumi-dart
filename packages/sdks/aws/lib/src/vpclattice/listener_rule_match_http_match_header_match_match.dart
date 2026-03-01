// ignore_for_file: unused_element, unnecessary_cast


class ListenerRuleMatchHttpMatchHeaderMatchMatch {
  /// Specifies a contains type match.
  final String? contains;
  /// Specifies an exact type match.
  final String? exact;
  /// Specifies a prefix type match.
  /// Matches the value with the prefix.
  final String? prefix;

  /// Creates a new [ListenerRuleMatchHttpMatchHeaderMatchMatch].
  /// [contains] Specifies a contains type match.
  /// [exact] Specifies an exact type match.
  /// [prefix] Specifies a prefix type match.
  ListenerRuleMatchHttpMatchHeaderMatchMatch({
    this.contains,
    this.exact,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contains': ?contains,
      'exact': ?exact,
      'prefix': ?prefix,
    };
  }

  factory ListenerRuleMatchHttpMatchHeaderMatchMatch.fromMap(Map<String, dynamic> map) {
    return ListenerRuleMatchHttpMatchHeaderMatchMatch(
      contains: map['contains'] == null ? null : map['contains'] as String,
      exact: map['exact'] == null ? null : map['exact'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

