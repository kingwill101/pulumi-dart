// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'http_route_route_action.dart';
import 'http_route_route_match.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class HttpRouteRouteRule {
  /// The detailed rule defining how to route matched traffic.
  final HttpRouteRouteAction? action;

  /// A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic. If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.
  final List<HttpRouteRouteMatch>? matches;

  HttpRouteRouteRule({
    this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue.toMap();
    }
    final matchesValue = matches;
    if (matchesValue != null) {
      map['matches'] =
          Input.encodeList<HttpRouteRouteMatch, Map<String, dynamic>>(
              matchesValue, (value) => value.toMap());
    }
    return map;
  }

  factory HttpRouteRouteRule.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteRule(
      action: map['action'] == null
          ? null
          : HttpRouteRouteAction.fromMap(
              (map['action'] as Map).cast<String, dynamic>()),
      matches: map['matches'] == null
          ? null
          : Input.decodeList<HttpRouteRouteMatch>(
              map['matches'],
              (value) => HttpRouteRouteMatch.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
