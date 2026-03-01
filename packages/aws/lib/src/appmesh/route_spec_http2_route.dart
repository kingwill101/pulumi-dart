// ignore_for_file: unused_element, unnecessary_cast

import 'route_spec_http2_route_action.dart';
import 'route_spec_http2_route_match.dart';
import 'route_spec_http2_route_retry_policy.dart';
import 'route_spec_http2_route_timeout.dart';

class RouteSpecHttp2Route {
  /// Action to take if a match is determined.
  final RouteSpecHttp2RouteAction action;
  /// Criteria for determining an HTTP request match.
  final RouteSpecHttp2RouteMatch match;
  /// Retry policy.
  final RouteSpecHttp2RouteRetryPolicy? retryPolicy;
  /// Types of timeouts.
  final RouteSpecHttp2RouteTimeout? timeout;

  /// Creates a new [RouteSpecHttp2Route].
  /// [action] Action to take if a match is determined.
  /// [match] Criteria for determining an HTTP request match.
  /// [retryPolicy] Retry policy.
  /// [timeout] Types of timeouts.
  RouteSpecHttp2Route({
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

  factory RouteSpecHttp2Route.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2Route(
      action: RouteSpecHttp2RouteAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      match: RouteSpecHttp2RouteMatch.fromMap((map['match'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null ? null : RouteSpecHttp2RouteRetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : RouteSpecHttp2RouteTimeout.fromMap((map['timeout'] as Map).cast<String, dynamic>()),
    );
  }
}

