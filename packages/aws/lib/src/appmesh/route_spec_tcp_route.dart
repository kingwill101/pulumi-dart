// ignore_for_file: unused_element, unnecessary_cast

import 'route_spec_tcp_route_action.dart';
import 'route_spec_tcp_route_match.dart';
import 'route_spec_tcp_route_timeout.dart';

class RouteSpecTcpRoute {
  /// Action to take if a match is determined.
  final RouteSpecTcpRouteAction action;
  final RouteSpecTcpRouteMatch? match;

  /// Types of timeouts.
  final RouteSpecTcpRouteTimeout? timeout;

  /// Creates a new [RouteSpecTcpRoute].
  /// [action] Action to take if a match is determined.
  /// [match] Optional.
  /// [timeout] Types of timeouts.
  RouteSpecTcpRoute({
    required this.action,
    this.match,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    final matchValue = match;
    if (matchValue != null) {
      map['match'] = matchValue.toMap();
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue.toMap();
    }
    return map;
  }

  factory RouteSpecTcpRoute.fromMap(Map<String, dynamic> map) {
    return RouteSpecTcpRoute(
      action: RouteSpecTcpRouteAction.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      match: map['match'] == null
          ? null
          : RouteSpecTcpRouteMatch.fromMap(
              (map['match'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null
          ? null
          : RouteSpecTcpRouteTimeout.fromMap(
              (map['timeout'] as Map).cast<String, dynamic>()),
    );
  }
}
