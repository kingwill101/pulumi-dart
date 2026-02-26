// ignore_for_file: unused_element, unnecessary_cast

import '../listener_rule_match_http_match/listener_rule_match_http_match.dart';

class ListenerRuleMatch {
  /// The HTTP criteria that a rule must match.
  /// See <span pulumi-lang-nodejs="`httpMatch`" pulumi-lang-dotnet="`HttpMatch`" pulumi-lang-go="`httpMatch`" pulumi-lang-python="`http_match`" pulumi-lang-yaml="`httpMatch`" pulumi-lang-java="`httpMatch`">`http_match`</span> Block for details.
  final ListenerRuleMatchHttpMatch httpMatch;

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
