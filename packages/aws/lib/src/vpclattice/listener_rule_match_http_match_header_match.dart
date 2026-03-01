// ignore_for_file: unused_element, unnecessary_cast

import 'listener_rule_match_http_match_header_match_match.dart';

class ListenerRuleMatchHttpMatchHeaderMatch {
  /// Indicates whether the match is case sensitive.
  /// Default is `false`.
  final bool? caseSensitive;

  /// The header match type.
  /// See Header Match `match` Block for details.
  final ListenerRuleMatchHttpMatchHeaderMatchMatch match;

  /// The name of the header.
  final String name;

  /// Creates a new [ListenerRuleMatchHttpMatchHeaderMatch].
  /// [caseSensitive] Indicates whether the match is case sensitive.
  /// [match] The header match type.
  /// [name] The name of the header.
  ListenerRuleMatchHttpMatchHeaderMatch({
    this.caseSensitive,
    required this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': ?caseSensitive,
      'match': match.toMap(),
      'name': name,
    };
  }

  factory ListenerRuleMatchHttpMatchHeaderMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListenerRuleMatchHttpMatchHeaderMatch(
      caseSensitive: map['caseSensitive'] == null
          ? null
          : map['caseSensitive'] as bool,
      match: ListenerRuleMatchHttpMatchHeaderMatchMatch.fromMap(
        (map['match'] as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
    );
  }
}
