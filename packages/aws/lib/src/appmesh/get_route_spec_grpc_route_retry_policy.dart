// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route_retry_policy_per_retry_timeout.dart';

class GetRouteSpecGrpcRouteRetryPolicy {
  final List<String> grpcRetryEvents;
  final List<String> httpRetryEvents;
  final int maxRetries;
  final List<GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout> perRetryTimeouts;
  final List<String> tcpRetryEvents;

  /// Creates a new [GetRouteSpecGrpcRouteRetryPolicy].
  /// [grpcRetryEvents] Required.
  /// [httpRetryEvents] Required.
  /// [maxRetries] Required.
  /// [perRetryTimeouts] Required.
  /// [tcpRetryEvents] Required.
  GetRouteSpecGrpcRouteRetryPolicy({
    required this.grpcRetryEvents,
    required this.httpRetryEvents,
    required this.maxRetries,
    required this.perRetryTimeouts,
    required this.tcpRetryEvents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['grpcRetryEvents'] = grpcRetryEvents;
    map['httpRetryEvents'] = httpRetryEvents;
    map['maxRetries'] = maxRetries;
    map['perRetryTimeouts'] = pulumi.Input.encodeList<
        GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout,
        Map<String, dynamic>>(perRetryTimeouts, (value) => value.toMap());
    map['tcpRetryEvents'] = tcpRetryEvents;
    return map;
  }

  factory GetRouteSpecGrpcRouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteRetryPolicy(
      grpcRetryEvents: (map['grpcRetryEvents'] as List).cast<String>(),
      httpRetryEvents: (map['httpRetryEvents'] as List).cast<String>(),
      maxRetries: map['maxRetries'] as int,
      perRetryTimeouts: pulumi.Input.decodeList<
              GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout>(
          map['perRetryTimeouts'],
          (value) => GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout.fromMap(
              (value as Map).cast<String, dynamic>())),
      tcpRetryEvents: (map['tcpRetryEvents'] as List).cast<String>(),
    );
  }
}
