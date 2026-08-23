// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_grpc_route_retry_policy_per_retry_timeout.dart';

class RouteSpecGrpcRouteRetryPolicy {
  /// List of gRPC retry events. Valid values: `cancelled`, `deadline-exceeded`, `internal`, `resource-exhausted`, `unavailable`.
  final pulumi.Input<List<String>>? grpcRetryEvents;
  /// List of HTTP retry events. Valid values: `client-error` (HTTP status code 409), `gateway-error` (HTTP status codes 502, 503, and 504), `server-error` (HTTP status codes 500, 501, 502, 503, 504, 505, 506, 507, 508, 510, and 511), `stream-error` (retry on refused stream).
  final pulumi.Input<List<String>>? httpRetryEvents;
  /// Maximum number of retries.
  final pulumi.Input<int> maxRetries;
  /// Per-retry timeout. See `spec.http_route.retry_policy.per_retry_timeout` Block for details.
  final pulumi.Input<RouteSpecGrpcRouteRetryPolicyPerRetryTimeout> perRetryTimeout;
  /// List of TCP retry events. The only valid value is `connection-error`. You must specify at least one value for `httpRetryEvents`, or at least one value for `tcpRetryEvents`.
  final pulumi.Input<List<String>>? tcpRetryEvents;

  /// Creates a new [RouteSpecGrpcRouteRetryPolicy].
  /// [grpcRetryEvents] List of gRPC retry events. Valid values: `cancelled`, `deadline-exceeded`, `internal`, `resource-exhausted`, `unavailable`.
  /// [httpRetryEvents] List of HTTP retry events. Valid values: `client-error` (HTTP status code 409), `gateway-error` (HTTP status codes 502, 503, and 504), `server-error` (HTTP status codes 500, 501, 502, 503, 504, 505, 506, 507, 508, 510, and 511), `stream-error` (retry on refused stream).
  /// [maxRetries] Maximum number of retries.
  /// [perRetryTimeout] Per-retry timeout. See `spec.http_route.retry_policy.per_retry_timeout` Block for details.
  /// [tcpRetryEvents] List of TCP retry events. The only valid value is `connection-error`. You must specify at least one value for `httpRetryEvents`, or at least one value for `tcpRetryEvents`.
  const RouteSpecGrpcRouteRetryPolicy({
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
      'perRetryTimeout': pulumi.Input.mapInputValue<RouteSpecGrpcRouteRetryPolicyPerRetryTimeout, Map<String, dynamic>>(perRetryTimeout, (value) => value.toMap()),
      'tcpRetryEvents': ?tcpRetryEvents,
    };
  }

  factory RouteSpecGrpcRouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRouteRetryPolicy(
      grpcRetryEvents: (() { final guardedValue = map['grpcRetryEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpRetryEvents: (() { final guardedValue = map['httpRetryEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxRetries: pulumi.Input.fromValue(map['maxRetries'] as int),
      perRetryTimeout: pulumi.Input.fromValue(RouteSpecGrpcRouteRetryPolicyPerRetryTimeout.fromMap((map['perRetryTimeout']! as Map).cast<String, dynamic>())),
      tcpRetryEvents: (() { final guardedValue = map['tcpRetryEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
