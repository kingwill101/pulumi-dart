// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_http2_route_retry_policy_per_retry_timeout/get_route_spec_http2_route_retry_policy_per_retry_timeout.dart';

class GetRouteSpecHttp2RouteRetryPolicy {
  final List<String> httpRetryEvents;
  final int maxRetries;
  final List<GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout> perRetryTimeouts;
  final List<String> tcpRetryEvents;

  GetRouteSpecHttp2RouteRetryPolicy({
    required this.httpRetryEvents,
    required this.maxRetries,
    required this.perRetryTimeouts,
    required this.tcpRetryEvents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpRetryEvents'] = httpRetryEvents;
    map['maxRetries'] = maxRetries;
    map['perRetryTimeouts'] = Input.encodeList<
        GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout,
        Map<String, dynamic>>(perRetryTimeouts, (value) => value.toMap());
    map['tcpRetryEvents'] = tcpRetryEvents;
    return map;
  }

  factory GetRouteSpecHttp2RouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteRetryPolicy(
      httpRetryEvents: (map['httpRetryEvents'] as List).cast<String>(),
      maxRetries: map['maxRetries'] as int,
      perRetryTimeouts:
          Input.decodeList<GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout>(
              map['perRetryTimeouts'],
              (value) =>
                  GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout.fromMap(
                      (value as Map).cast<String, dynamic>())),
      tcpRetryEvents: (map['tcpRetryEvents'] as List).cast<String>(),
    );
  }
}
