// ignore_for_file: unused_element, unnecessary_cast

import '../listener_rule_match_http_match_header_match_match/listener_rule_match_http_match_header_match_match.dart';

class ListenerRuleMatchHttpMatchHeaderMatch {
  /// Indicates whether the match is case sensitive.
  /// Default is `false`.
  final bool? caseSensitive;

  /// The header match type.
  /// See Header Match `match` Block for details.
  final ListenerRuleMatchHttpMatchHeaderMatchMatch match;

  /// The name of the header.
  final String name;

  ListenerRuleMatchHttpMatchHeaderMatch({
    this.caseSensitive,
    required this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caseSensitiveValue = caseSensitive;
    if (caseSensitiveValue != null) {
      map['caseSensitive'] = caseSensitiveValue;
    }
    map['match'] = match.toMap();
    map['name'] = name;
    return map;
  }

  factory ListenerRuleMatchHttpMatchHeaderMatch.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleMatchHttpMatchHeaderMatch(
      caseSensitive:
          map['caseSensitive'] == null ? null : map['caseSensitive'] as bool,
      match: ListenerRuleMatchHttpMatchHeaderMatchMatch.fromMap(
          (map['match'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
