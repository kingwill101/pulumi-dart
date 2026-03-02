// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_tcp_route_action.dart';
import 'route_spec_tcp_route_match.dart';
import 'route_spec_tcp_route_timeout.dart';

class RouteSpecTcpRoute {
  /// Action to take if a match is determined.
  final pulumi.Input<RouteSpecTcpRouteAction> action;
  final pulumi.Input<RouteSpecTcpRouteMatch>? match;
  /// Types of timeouts.
  final pulumi.Input<RouteSpecTcpRouteTimeout>? timeout;

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
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<RouteSpecTcpRouteAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'match': ?pulumi.Input.mapOptionalInputValue<RouteSpecTcpRouteMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'timeout': ?pulumi.Input.mapOptionalInputValue<RouteSpecTcpRouteTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
    };
  }

  factory RouteSpecTcpRoute.fromMap(Map<String, dynamic> map) {
    return RouteSpecTcpRoute(
      action: (RouteSpecTcpRouteAction.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      match: map['match'] == null ? null : (RouteSpecTcpRouteMatch.fromMap((map['match'] as Map).cast<String, dynamic>())).input(),
      timeout: map['timeout'] == null ? null : (RouteSpecTcpRouteTimeout.fromMap((map['timeout'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

