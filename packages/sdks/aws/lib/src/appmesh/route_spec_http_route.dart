// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http_route_action.dart';
import 'route_spec_http_route_match.dart';
import 'route_spec_http_route_retry_policy.dart';
import 'route_spec_http_route_timeout.dart';

class RouteSpecHttpRoute {
  /// Action to take if a match is determined. See `spec.tcp_route.action` Block for details.
  final pulumi.Input<RouteSpecHttpRouteAction> action;
  /// Criteria for determining a TCP request match. See `spec.tcp_route.match` Block for details.
  final pulumi.Input<RouteSpecHttpRouteMatch> match;
  /// Retry policy. See `spec.http_route.retry_policy` Block for details.
  final pulumi.Input<RouteSpecHttpRouteRetryPolicy?>? retryPolicy;
  /// Types of timeouts. See `spec.tcp_route.timeout` Block for details.
  final pulumi.Input<RouteSpecHttpRouteTimeout?>? timeout;

  /// Creates a new [RouteSpecHttpRoute].
  /// [action] Action to take if a match is determined. See `spec.tcp_route.action` Block for details.
  /// [match] Criteria for determining a TCP request match. See `spec.tcp_route.match` Block for details.
  /// [retryPolicy] Retry policy. See `spec.http_route.retry_policy` Block for details.
  /// [timeout] Types of timeouts. See `spec.tcp_route.timeout` Block for details.
  const RouteSpecHttpRoute({
    required this.action,
    required this.match,
    this.retryPolicy,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<RouteSpecHttpRouteAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'match': pulumi.Input.mapInputValue<RouteSpecHttpRouteMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttpRouteRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'timeout': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttpRouteTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
    };
  }

  factory RouteSpecHttpRoute.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRoute(
      action: pulumi.Input.fromValue(RouteSpecHttpRouteAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      match: pulumi.Input.fromValue(RouteSpecHttpRouteMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttpRouteRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttpRouteTimeout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
