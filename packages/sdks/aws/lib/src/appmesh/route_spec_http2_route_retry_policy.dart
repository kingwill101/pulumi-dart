// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http2_route_retry_policy_per_retry_timeout.dart';

class RouteSpecHttp2RouteRetryPolicy {
  /// List of HTTP retry events.
  /// Valid values: `client-error` (HTTP status code 409), `gateway-error` (HTTP status codes 502, 503, and 504), `server-error` (HTTP status codes 500, 501, 502, 503, 504, 505, 506, 507, 508, 510, and 511), `stream-error` (retry on refused stream).
  final pulumi.Input<List<String>>? httpRetryEvents;

  /// Maximum number of retries.
  final pulumi.Input<int> maxRetries;

  /// Per-retry timeout.
  final pulumi.Input<RouteSpecHttp2RouteRetryPolicyPerRetryTimeout>
  perRetryTimeout;

  /// List of TCP retry events. The only valid value is `connection-error`.
  ///
  /// You must specify at least one value for `http_retry_events`, or at least one value for `tcp_retry_events`.
  final pulumi.Input<List<String>>? tcpRetryEvents;

  /// Creates a new [RouteSpecHttp2RouteRetryPolicy].
  /// [httpRetryEvents] List of HTTP retry events.
  /// [maxRetries] Maximum number of retries.
  /// [perRetryTimeout] Per-retry timeout.
  /// [tcpRetryEvents] List of TCP retry events. The only valid value is `connection-error`.
  RouteSpecHttp2RouteRetryPolicy({
    this.httpRetryEvents,
    required this.maxRetries,
    required this.perRetryTimeout,
    this.tcpRetryEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpRetryEvents': ?httpRetryEvents,
      'maxRetries': maxRetries,
      'perRetryTimeout':
          pulumi.Input.mapInputValue<
            RouteSpecHttp2RouteRetryPolicyPerRetryTimeout,
            Map<String, dynamic>
          >(perRetryTimeout, (value) => value.toMap()),
      'tcpRetryEvents': ?tcpRetryEvents,
    };
  }

  factory RouteSpecHttp2RouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteRetryPolicy(
      httpRetryEvents: (() {
        final guardedValue = map['httpRetryEvents'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      maxRetries: pulumi.Input.fromValue(map['maxRetries'] as int),
      perRetryTimeout: pulumi.Input.fromValue(
        RouteSpecHttp2RouteRetryPolicyPerRetryTimeout.fromMap(
          (map['perRetryTimeout']! as Map).cast<String, dynamic>(),
        ),
      ),
      tcpRetryEvents: (() {
        final guardedValue = map['tcpRetryEvents'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
