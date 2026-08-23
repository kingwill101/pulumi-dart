// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http2_route_retry_policy_per_retry_timeout.dart';

class GetRouteSpecHttp2RouteRetryPolicy {
  final pulumi.Input<List<String>> httpRetryEvents;
  final pulumi.Input<int> maxRetries;
  final pulumi.Input<List<GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout>> perRetryTimeouts;
  final pulumi.Input<List<String>> tcpRetryEvents;

  /// Creates a new [GetRouteSpecHttp2RouteRetryPolicy].
  /// [httpRetryEvents] Required.
  /// [maxRetries] Required.
  /// [perRetryTimeouts] Required.
  /// [tcpRetryEvents] Required.
  const GetRouteSpecHttp2RouteRetryPolicy({
    required this.httpRetryEvents,
    required this.maxRetries,
    required this.perRetryTimeouts,
    required this.tcpRetryEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpRetryEvents': httpRetryEvents,
      'maxRetries': maxRetries,
      'perRetryTimeouts': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout>, List<Map<String, dynamic>>>(perRetryTimeouts, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tcpRetryEvents': tcpRetryEvents,
    };
  }

  factory GetRouteSpecHttp2RouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteRetryPolicy(
      httpRetryEvents: pulumi.Input.fromValue((map['httpRetryEvents'] as List).cast<String>()),
      maxRetries: pulumi.Input.fromValue(map['maxRetries'] as int),
      perRetryTimeouts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout>(map['perRetryTimeouts']!, (value) => GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout.fromMap((value as Map).cast<String, dynamic>()))),
      tcpRetryEvents: pulumi.Input.fromValue((map['tcpRetryEvents'] as List).cast<String>()),
    );
  }
}
