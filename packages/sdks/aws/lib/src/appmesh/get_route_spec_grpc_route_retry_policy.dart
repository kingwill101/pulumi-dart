// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route_retry_policy_per_retry_timeout.dart';

class GetRouteSpecGrpcRouteRetryPolicy {
  final pulumi.Input<List<String>> grpcRetryEvents;
  final pulumi.Input<List<String>> httpRetryEvents;
  final pulumi.Input<int> maxRetries;
  final pulumi.Input<List<GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout>> perRetryTimeouts;
  final pulumi.Input<List<String>> tcpRetryEvents;

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
    return <String, dynamic>{
      'grpcRetryEvents': grpcRetryEvents,
      'httpRetryEvents': httpRetryEvents,
      'maxRetries': maxRetries,
      'perRetryTimeouts': pulumi.Input.mapInputValue<List<GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout>, List<Map<String, dynamic>>>(perRetryTimeouts, (value) => pulumi.Input.encodeList<GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tcpRetryEvents': tcpRetryEvents,
    };
  }

  factory GetRouteSpecGrpcRouteRetryPolicy.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteRetryPolicy(
      grpcRetryEvents: ((map['grpcRetryEvents'] as List).cast<String>()).input(),
      httpRetryEvents: ((map['httpRetryEvents'] as List).cast<String>()).input(),
      maxRetries: (map['maxRetries'] as int).input(),
      perRetryTimeouts: (pulumi.Input.decodeList<GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout>(map['perRetryTimeouts'], (value) => GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tcpRetryEvents: ((map['tcpRetryEvents'] as List).cast<String>()).input(),
    );
  }
}

