// ignore_for_file: unused_element, unnecessary_cast

import 'route_spec_grpc_route_action.dart';
import 'route_spec_grpc_route_match.dart';
import 'route_spec_grpc_route_retry_policy.dart';
import 'route_spec_grpc_route_timeout.dart';

class RouteSpecGrpcRoute {
  /// Action to take if a match is determined.
  final RouteSpecGrpcRouteAction action;
  /// Criteria for determining an gRPC request match.
  final RouteSpecGrpcRouteMatch? match;
  /// Retry policy.
  final RouteSpecGrpcRouteRetryPolicy? retryPolicy;
  /// Types of timeouts.
  final RouteSpecGrpcRouteTimeout? timeout;

  /// Creates a new [RouteSpecGrpcRoute].
  /// [action] Action to take if a match is determined.
  /// [match] Criteria for determining an gRPC request match.
  /// [retryPolicy] Retry policy.
  /// [timeout] Types of timeouts.
  RouteSpecGrpcRoute({
    required this.action,
    this.match,
    this.retryPolicy,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'match': ?match == null ? null : match!.toMap(),
      'retryPolicy': ?retryPolicy == null ? null : retryPolicy!.toMap(),
      'timeout': ?timeout == null ? null : timeout!.toMap(),
    };
  }

  factory RouteSpecGrpcRoute.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRoute(
      action: RouteSpecGrpcRouteAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      match: map['match'] == null ? null : RouteSpecGrpcRouteMatch.fromMap((map['match'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null ? null : RouteSpecGrpcRouteRetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : RouteSpecGrpcRouteTimeout.fromMap((map['timeout'] as Map).cast<String, dynamic>()),
    );
  }
}

