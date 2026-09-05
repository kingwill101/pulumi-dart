// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_match_http_match_header_match_match.dart';

class ListenerRuleMatchHttpMatchHeaderMatch {
  /// Whether the match is case sensitive. Default is `false`.
  final pulumi.Input<bool?>? caseSensitive;
  /// Header match type. See `match.http_match.header_matches.match` Block for details.
  final pulumi.Input<ListenerRuleMatchHttpMatchHeaderMatchMatch> match;
  /// Name of the header.
  final pulumi.Input<String> name;

  /// Creates a new [ListenerRuleMatchHttpMatchHeaderMatch].
  /// [caseSensitive] Whether the match is case sensitive. Default is `false`.
  /// [match] Header match type. See `match.http_match.header_matches.match` Block for details.
  /// [name] Name of the header.
  const ListenerRuleMatchHttpMatchHeaderMatch({
    this.caseSensitive,
    required this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': ?caseSensitive,
      'match': pulumi.Input.mapInputValue<ListenerRuleMatchHttpMatchHeaderMatchMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': name,
    };
  }

  factory ListenerRuleMatchHttpMatchHeaderMatch.fromMap(Map<String, dynamic> map) {
    return ListenerRuleMatchHttpMatchHeaderMatch(
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      match: pulumi.Input.fromValue(ListenerRuleMatchHttpMatchHeaderMatchMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
