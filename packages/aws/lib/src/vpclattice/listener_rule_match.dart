// ignore_for_file: unused_element, unnecessary_cast

import 'listener_rule_match_http_match.dart';

class ListenerRuleMatch {
  /// The HTTP criteria that a rule must match.
  /// See `http_match` Block for details.
  final ListenerRuleMatchHttpMatch httpMatch;

  /// Creates a new [ListenerRuleMatch].
  /// [httpMatch] The HTTP criteria that a rule must match.
  ListenerRuleMatch({
    required this.httpMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpMatch'] = httpMatch.toMap();
    return map;
  }

  factory ListenerRuleMatch.fromMap(Map<String, dynamic> map) {
    return ListenerRuleMatch(
      httpMatch: ListenerRuleMatchHttpMatch.fromMap(
          (map['httpMatch'] as Map).cast<String, dynamic>()),
    );
  }
}
