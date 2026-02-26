// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_http_route_retry_policy_per_retry_timeout/get_route_spec_http_route_retry_policy_per_retry_timeout.dart';

class GetRouteSpecHttpRouteRetryPolicy {
  final List<String> httpRetryEvents;
  final int maxRetries;
  final List<GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout> perRetryTimeouts;
  final List<String> tcpRetryEvents;

  GetRouteSpecHttpRouteRetryPolicy({
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
        GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout,
        Map<String, dynamic>>(perRetryTimeouts, (value) => value.toMap());
    map['tcpRetryEvents'] = tcpRetryEvents;
    return map;
  }

  factory GetRouteSpecHttpRouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteRetryPolicy(
      httpRetryEvents: (map['httpRetryEvents'] as List).cast<String>(),
      maxRetries: map['maxRetries'] as int,
      perRetryTimeouts:
          Input.decodeList<GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout>(
              map['perRetryTimeouts'],
              (value) =>
                  GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout.fromMap(
                      (value as Map).cast<String, dynamic>())),
      tcpRetryEvents: (map['tcpRetryEvents'] as List).cast<String>(),
    );
  }
}
