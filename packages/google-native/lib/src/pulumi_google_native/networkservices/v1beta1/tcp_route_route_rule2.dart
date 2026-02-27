// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'tcp_route_route_action2.dart';
import 'tcp_route_route_match2.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TcpRouteRouteRule2 {
  /// The detailed rule defining how to route matched traffic.
  final TcpRouteRouteAction2 action;

  /// Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
  final List<TcpRouteRouteMatch2>? matches;

  TcpRouteRouteRule2({
    required this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    final matchesValue = matches;
    if (matchesValue != null) {
      map['matches'] =
          Input.encodeList<TcpRouteRouteMatch2, Map<String, dynamic>>(
              matchesValue, (value) => value.toMap());
    }
    return map;
  }

  factory TcpRouteRouteRule2.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteRule2(
      action: TcpRouteRouteAction2.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: map['matches'] == null
          ? null
          : Input.decodeList<TcpRouteRouteMatch2>(
              map['matches'],
              (value) => TcpRouteRouteMatch2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
