// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http2_route_retry_policy_per_retry_timeout.dart';

class GetRouteSpecHttp2RouteRetryPolicy {
  final List<String> httpRetryEvents;
  final int maxRetries;
  final List<GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout> perRetryTimeouts;
  final List<String> tcpRetryEvents;

  /// Creates a new [GetRouteSpecHttp2RouteRetryPolicy].
  /// [httpRetryEvents] Required.
  /// [maxRetries] Required.
  /// [perRetryTimeouts] Required.
  /// [tcpRetryEvents] Required.
  GetRouteSpecHttp2RouteRetryPolicy({
    required this.httpRetryEvents,
    required this.maxRetries,
    required this.perRetryTimeouts,
    required this.tcpRetryEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpRetryEvents': httpRetryEvents,
      'maxRetries': maxRetries,
      'perRetryTimeouts':
          pulumi.Input.encodeList<
            GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout,
            Map<String, dynamic>
          >(perRetryTimeouts, (value) => value.toMap()),
      'tcpRetryEvents': tcpRetryEvents,
    };
  }

  factory GetRouteSpecHttp2RouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteRetryPolicy(
      httpRetryEvents: (map['httpRetryEvents'] as List).cast<String>(),
      maxRetries: map['maxRetries'] as int,
      perRetryTimeouts:
          pulumi.Input.decodeList<
            GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout
          >(
            map['perRetryTimeouts'],
            (value) => GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      tcpRetryEvents: (map['tcpRetryEvents'] as List).cast<String>(),
    );
  }
}
