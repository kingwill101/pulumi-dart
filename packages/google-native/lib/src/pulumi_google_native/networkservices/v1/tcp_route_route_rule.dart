// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'tcp_route_route_action.dart';
import 'tcp_route_route_match.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TcpRouteRouteRule {
  /// The detailed rule defining how to route matched traffic.
  final TcpRouteRouteAction action;

  /// Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
  final List<TcpRouteRouteMatch>? matches;

  TcpRouteRouteRule({
    required this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    final matchesValue = matches;
    if (matchesValue != null) {
      map['matches'] =
          Input.encodeList<TcpRouteRouteMatch, Map<String, dynamic>>(
              matchesValue, (value) => value.toMap());
    }
    return map;
  }

  factory TcpRouteRouteRule.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteRule(
      action: TcpRouteRouteAction.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: map['matches'] == null
          ? null
          : Input.decodeList<TcpRouteRouteMatch>(
              map['matches'],
              (value) => TcpRouteRouteMatch.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
