// ignore_for_file: unused_element, unnecessary_cast

import 'route_spec_grpc_route_retry_policy_per_retry_timeout.dart';

class RouteSpecGrpcRouteRetryPolicy {
  /// List of gRPC retry events.
  /// Valid values: `cancelled`, `deadline-exceeded`, `internal`, `resource-exhausted`, `unavailable`.
  final List<String>? grpcRetryEvents;
  /// List of HTTP retry events.
  /// Valid values: `client-error` (HTTP status code 409), `gateway-error` (HTTP status codes 502, 503, and 504), `server-error` (HTTP status codes 500, 501, 502, 503, 504, 505, 506, 507, 508, 510, and 511), `stream-error` (retry on refused stream).
  final List<String>? httpRetryEvents;
  /// Maximum number of retries.
  final int maxRetries;
  /// Per-retry timeout.
  final RouteSpecGrpcRouteRetryPolicyPerRetryTimeout perRetryTimeout;
  /// List of TCP retry events. The only valid value is `connection-error`.
  final List<String>? tcpRetryEvents;

  /// Creates a new [RouteSpecGrpcRouteRetryPolicy].
  /// [grpcRetryEvents] List of gRPC retry events.
  /// [httpRetryEvents] List of HTTP retry events.
  /// [maxRetries] Maximum number of retries.
  /// [perRetryTimeout] Per-retry timeout.
  /// [tcpRetryEvents] List of TCP retry events. The only valid value is `connection-error`.
  RouteSpecGrpcRouteRetryPolicy({
    this.grpcRetryEvents,
    this.httpRetryEvents,
    required this.maxRetries,
    required this.perRetryTimeout,
    this.tcpRetryEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcRetryEvents': ?grpcRetryEvents,
      'httpRetryEvents': ?httpRetryEvents,
      'maxRetries': maxRetries,
      'perRetryTimeout': perRetryTimeout.toMap(),
      'tcpRetryEvents': ?tcpRetryEvents,
    };
  }

  factory RouteSpecGrpcRouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRouteRetryPolicy(
      grpcRetryEvents: map['grpcRetryEvents'] == null ? null : (map['grpcRetryEvents'] as List).cast<String>(),
      httpRetryEvents: map['httpRetryEvents'] == null ? null : (map['httpRetryEvents'] as List).cast<String>(),
      maxRetries: map['maxRetries'] as int,
      perRetryTimeout: RouteSpecGrpcRouteRetryPolicyPerRetryTimeout.fromMap((map['perRetryTimeout'] as Map).cast<String, dynamic>()),
      tcpRetryEvents: map['tcpRetryEvents'] == null ? null : (map['tcpRetryEvents'] as List).cast<String>(),
    );
  }
}

