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
      action: pulumi.Input.fromValue(RouteSpecTcpRouteAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecTcpRouteMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecTcpRouteTimeout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

