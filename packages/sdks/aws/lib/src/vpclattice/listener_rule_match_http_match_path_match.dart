// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_match_http_match_path_match_match.dart';

class ListenerRuleMatchHttpMatchPathMatch {
  /// Indicates whether the match is case sensitive.
  /// Default is `false`.
  final pulumi.Input<bool>? caseSensitive;
  /// The header match type.
  /// See Path Match `match` Block for details.
  final pulumi.Input<ListenerRuleMatchHttpMatchPathMatchMatch> match;

  /// Creates a new [ListenerRuleMatchHttpMatchPathMatch].
  /// [caseSensitive] Indicates whether the match is case sensitive.
  /// [match] The header match type.
  const ListenerRuleMatchHttpMatchPathMatch({
    this.caseSensitive,
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': ?caseSensitive,
      'match': pulumi.Input.mapInputValue<ListenerRuleMatchHttpMatchPathMatchMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
    };
  }

  factory ListenerRuleMatchHttpMatchPathMatch.fromMap(Map<String, dynamic> map) {
    return ListenerRuleMatchHttpMatchPathMatch(
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      match: pulumi.Input.fromValue(ListenerRuleMatchHttpMatchPathMatchMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
    );
  }
}

