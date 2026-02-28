// ignore_for_file: unused_element, unnecessary_cast

import 'listener_rule_match_http_match_path_match_match.dart';

class ListenerRuleMatchHttpMatchPathMatch {
  /// Indicates whether the match is case sensitive.
  /// Default is `false`.
  final bool? caseSensitive;
  /// The header match type.
  /// See Path Match `match` Block for details.
  final ListenerRuleMatchHttpMatchPathMatchMatch match;

  /// Creates a new [ListenerRuleMatchHttpMatchPathMatch].
  /// [caseSensitive] Indicates whether the match is case sensitive.
  /// [match] The header match type.
  ListenerRuleMatchHttpMatchPathMatch({
    this.caseSensitive,
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': ?caseSensitive,
      'match': match.toMap(),
    };
  }

  factory ListenerRuleMatchHttpMatchPathMatch.fromMap(Map<String, dynamic> map) {
    return ListenerRuleMatchHttpMatchPathMatch(
      caseSensitive: map['caseSensitive'] == null ? null : map['caseSensitive'] as bool,
      match: ListenerRuleMatchHttpMatchPathMatchMatch.fromMap((map['match'] as Map).cast<String, dynamic>()),
    );
  }
}

