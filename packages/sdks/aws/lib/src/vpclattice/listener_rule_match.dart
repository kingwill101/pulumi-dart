// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_match_http_match.dart';

class ListenerRuleMatch {
  /// The HTTP criteria that a rule must match.
  /// See `http_match` Block for details.
  final pulumi.Input<ListenerRuleMatchHttpMatch> httpMatch;

  /// Creates a new [ListenerRuleMatch].
  /// [httpMatch] The HTTP criteria that a rule must match.
  ListenerRuleMatch({
    required this.httpMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpMatch': pulumi.Input.mapInputValue<ListenerRuleMatchHttpMatch, Map<String, dynamic>>(httpMatch, (value) => value.toMap()),
    };
  }

  factory ListenerRuleMatch.fromMap(Map<String, dynamic> map) {
    return ListenerRuleMatch(
      httpMatch: (ListenerRuleMatchHttpMatch.fromMap((map['httpMatch'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

