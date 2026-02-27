// ignore_for_file: unused_element, unnecessary_cast

import '../listener_rule_match_http_match_path_match_match/listener_rule_match_http_match_path_match_match.dart';

class ListenerRuleMatchHttpMatchPathMatch {
  /// Indicates whether the match is case sensitive.
  /// Default is `false`.
  final bool? caseSensitive;

  /// The header match type.
  /// See Path Match `match` Block for details.
  final ListenerRuleMatchHttpMatchPathMatchMatch match;

  ListenerRuleMatchHttpMatchPathMatch({
    this.caseSensitive,
    required this.match,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caseSensitiveValue = caseSensitive;
    if (caseSensitiveValue != null) {
      map['caseSensitive'] = caseSensitiveValue;
    }
    map['match'] = match.toMap();
    return map;
  }

  factory ListenerRuleMatchHttpMatchPathMatch.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleMatchHttpMatchPathMatch(
      caseSensitive:
          map['caseSensitive'] == null ? null : map['caseSensitive'] as bool,
      match: ListenerRuleMatchHttpMatchPathMatchMatch.fromMap(
          (map['match'] as Map).cast<String, dynamic>()),
    );
  }
}
