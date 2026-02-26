// ignore_for_file: unused_element, unnecessary_cast

import '../route_spec_http_route_action/route_spec_http_route_action.dart';
import '../route_spec_http_route_match/route_spec_http_route_match.dart';
import '../route_spec_http_route_retry_policy/route_spec_http_route_retry_policy.dart';
import '../route_spec_http_route_timeout/route_spec_http_route_timeout.dart';

class RouteSpecHttpRoute {
  /// Action to take if a match is determined.
  final RouteSpecHttpRouteAction action;

  /// Criteria for determining an HTTP request match.
  final RouteSpecHttpRouteMatch match;

  /// Retry policy.
  final RouteSpecHttpRouteRetryPolicy? retryPolicy;

  /// Types of timeouts.
  final RouteSpecHttpRouteTimeout? timeout;

  RouteSpecHttpRoute({
    required this.action,
    required this.match,
    this.retryPolicy,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['match'] = match.toMap();
    final retryPolicyValue = retryPolicy;
    if (retryPolicyValue != null) {
      map['retryPolicy'] = retryPolicyValue.toMap();
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue.toMap();
    }
    return map;
  }

  factory RouteSpecHttpRoute.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRoute(
      action: RouteSpecHttpRouteAction.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      match: RouteSpecHttpRouteMatch.fromMap(
          (map['match'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null
          ? null
          : RouteSpecHttpRouteRetryPolicy.fromMap(
              (map['retryPolicy'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null
          ? null
          : RouteSpecHttpRouteTimeout.fromMap(
              (map['timeout'] as Map).cast<String, dynamic>()),
    );
  }
}
