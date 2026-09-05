// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http2_route_action.dart';
import 'route_spec_http2_route_match.dart';
import 'route_spec_http2_route_retry_policy.dart';
import 'route_spec_http2_route_timeout.dart';

class RouteSpecHttp2Route {
  /// Action to take if a match is determined. See `spec.tcp_route.action` Block for details.
  final pulumi.Input<RouteSpecHttp2RouteAction> action;
  /// Criteria for determining a TCP request match. See `spec.tcp_route.match` Block for details.
  final pulumi.Input<RouteSpecHttp2RouteMatch> match;
  /// Retry policy. See `spec.http_route.retry_policy` Block for details.
  final pulumi.Input<RouteSpecHttp2RouteRetryPolicy?>? retryPolicy;
  /// Types of timeouts. See `spec.tcp_route.timeout` Block for details.
  final pulumi.Input<RouteSpecHttp2RouteTimeout?>? timeout;

  /// Creates a new [RouteSpecHttp2Route].
  /// [action] Action to take if a match is determined. See `spec.tcp_route.action` Block for details.
  /// [match] Criteria for determining a TCP request match. See `spec.tcp_route.match` Block for details.
  /// [retryPolicy] Retry policy. See `spec.http_route.retry_policy` Block for details.
  /// [timeout] Types of timeouts. See `spec.tcp_route.timeout` Block for details.
  const RouteSpecHttp2Route({
    required this.action,
    required this.match,
    this.retryPolicy,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<RouteSpecHttp2RouteAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'match': pulumi.Input.mapInputValue<RouteSpecHttp2RouteMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttp2RouteRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'timeout': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttp2RouteTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
    };
  }

  factory RouteSpecHttp2Route.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2Route(
      action: pulumi.Input.fromValue(RouteSpecHttp2RouteAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      match: pulumi.Input.fromValue(RouteSpecHttp2RouteMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttp2RouteRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttp2RouteTimeout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
