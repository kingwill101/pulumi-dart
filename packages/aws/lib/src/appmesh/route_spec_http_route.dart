// ignore_for_file: unused_element, unnecessary_cast

import 'route_spec_http_route_action.dart';
import 'route_spec_http_route_match.dart';
import 'route_spec_http_route_retry_policy.dart';
import 'route_spec_http_route_timeout.dart';

class RouteSpecHttpRoute {
  /// Action to take if a match is determined.
  final RouteSpecHttpRouteAction action;

  /// Criteria for determining an HTTP request match.
  final RouteSpecHttpRouteMatch match;

  /// Retry policy.
  final RouteSpecHttpRouteRetryPolicy? retryPolicy;

  /// Types of timeouts.
  final RouteSpecHttpRouteTimeout? timeout;

  /// Creates a new [RouteSpecHttpRoute].
  /// [action] Action to take if a match is determined.
  /// [match] Criteria for determining an HTTP request match.
  /// [retryPolicy] Retry policy.
  /// [timeout] Types of timeouts.
  RouteSpecHttpRoute({
    required this.action,
    required this.match,
    this.retryPolicy,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'match': match.toMap(),
      'retryPolicy': ?retryPolicy == null ? null : retryPolicy!.toMap(),
      'timeout': ?timeout == null ? null : timeout!.toMap(),
    };
  }

  factory RouteSpecHttpRoute.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRoute(
      action: RouteSpecHttpRouteAction.fromMap(
        (map['action'] as Map).cast<String, dynamic>(),
      ),
      match: RouteSpecHttpRouteMatch.fromMap(
        (map['match'] as Map).cast<String, dynamic>(),
      ),
      retryPolicy: map['retryPolicy'] == null
          ? null
          : RouteSpecHttpRouteRetryPolicy.fromMap(
              (map['retryPolicy'] as Map).cast<String, dynamic>(),
            ),
      timeout: map['timeout'] == null
          ? null
          : RouteSpecHttpRouteTimeout.fromMap(
              (map['timeout'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
