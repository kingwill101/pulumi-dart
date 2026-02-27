// ignore_for_file: unused_element, unnecessary_cast

import '../route_spec_http2_route_retry_policy_per_retry_timeout/route_spec_http2_route_retry_policy_per_retry_timeout.dart';

class RouteSpecHttp2RouteRetryPolicy {
  /// List of HTTP retry events.
  /// Valid values: `client-error` (HTTP status code 409), `gateway-error` (HTTP status codes 502, 503, and 504), `server-error` (HTTP status codes 500, 501, 502, 503, 504, 505, 506, 507, 508, 510, and 511), `stream-error` (retry on refused stream).
  final List<String>? httpRetryEvents;

  /// Maximum number of retries.
  final int maxRetries;

  /// Per-retry timeout.
  final RouteSpecHttp2RouteRetryPolicyPerRetryTimeout perRetryTimeout;

  /// List of TCP retry events. The only valid value is `connection-error`.
  ///
  /// You must specify at least one value for `http_retry_events`, or at least one value for `tcp_retry_events`.
  final List<String>? tcpRetryEvents;

  RouteSpecHttp2RouteRetryPolicy({
    this.httpRetryEvents,
    required this.maxRetries,
    required this.perRetryTimeout,
    this.tcpRetryEvents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final httpRetryEventsValue = httpRetryEvents;
    if (httpRetryEventsValue != null) {
      map['httpRetryEvents'] = httpRetryEventsValue;
    }
    map['maxRetries'] = maxRetries;
    map['perRetryTimeout'] = perRetryTimeout.toMap();
    final tcpRetryEventsValue = tcpRetryEvents;
    if (tcpRetryEventsValue != null) {
      map['tcpRetryEvents'] = tcpRetryEventsValue;
    }
    return map;
  }

  factory RouteSpecHttp2RouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteRetryPolicy(
      httpRetryEvents: map['httpRetryEvents'] == null
          ? null
          : (map['httpRetryEvents'] as List).cast<String>(),
      maxRetries: map['maxRetries'] as int,
      perRetryTimeout: RouteSpecHttp2RouteRetryPolicyPerRetryTimeout.fromMap(
          (map['perRetryTimeout'] as Map).cast<String, dynamic>()),
      tcpRetryEvents: map['tcpRetryEvents'] == null
          ? null
          : (map['tcpRetryEvents'] as List).cast<String>(),
    );
  }
}
