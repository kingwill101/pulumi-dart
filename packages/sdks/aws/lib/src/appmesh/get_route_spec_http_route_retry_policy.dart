// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_retry_policy_per_retry_timeout.dart';

class GetRouteSpecHttpRouteRetryPolicy {
  final List<String> httpRetryEvents;
  final int maxRetries;
  final List<GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout> perRetryTimeouts;
  final List<String> tcpRetryEvents;

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
      'perRetryTimeouts': pulumi.Input.encodeList<GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout, Map<String, dynamic>>(perRetryTimeouts, (value) => value.toMap()),
      'tcpRetryEvents': tcpRetryEvents,
    };
  }

  factory GetRouteSpecHttpRouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteRetryPolicy(
      httpRetryEvents: (map['httpRetryEvents'] as List).cast<String>(),
      maxRetries: map['maxRetries'] as int,
      perRetryTimeouts: pulumi.Input.decodeList<GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout>(map['perRetryTimeouts'], (value) => GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout.fromMap((value as Map).cast<String, dynamic>())),
      tcpRetryEvents: (map['tcpRetryEvents'] as List).cast<String>(),
    );
  }
}

