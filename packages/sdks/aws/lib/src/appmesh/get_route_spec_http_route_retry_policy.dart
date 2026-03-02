// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_retry_policy_per_retry_timeout.dart';

class GetRouteSpecHttpRouteRetryPolicy {
  final pulumi.Input<List<String>> httpRetryEvents;
  final pulumi.Input<int> maxRetries;
  final pulumi.Input<List<GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout>> perRetryTimeouts;
  final pulumi.Input<List<String>> tcpRetryEvents;

  /// Creates a new [GetRouteSpecHttpRouteRetryPolicy].
  /// [httpRetryEvents] Required.
  /// [maxRetries] Required.
  /// [perRetryTimeouts] Required.
  /// [tcpRetryEvents] Required.
  GetRouteSpecHttpRouteRetryPolicy({
    required this.httpRetryEvents,
    required this.maxRetries,
    required this.perRetryTimeouts,
    required this.tcpRetryEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpRetryEvents': httpRetryEvents,
      'maxRetries': maxRetries,
      'perRetryTimeouts': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout>, List<Map<String, dynamic>>>(perRetryTimeouts, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tcpRetryEvents': tcpRetryEvents,
    };
  }

  factory GetRouteSpecHttpRouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteRetryPolicy(
      httpRetryEvents: ((map['httpRetryEvents'] as List).cast<String>()).input(),
      maxRetries: (map['maxRetries'] as int).input(),
      perRetryTimeouts: (pulumi.Input.decodeList<GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout>(map['perRetryTimeouts'], (value) => GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tcpRetryEvents: ((map['tcpRetryEvents'] as List).cast<String>()).input(),
    );
  }
}

