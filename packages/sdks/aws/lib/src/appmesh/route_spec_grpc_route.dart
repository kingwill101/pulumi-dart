// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_grpc_route_action.dart';
import 'route_spec_grpc_route_match.dart';
import 'route_spec_grpc_route_retry_policy.dart';
import 'route_spec_grpc_route_timeout.dart';

class RouteSpecGrpcRoute {
  /// Action to take if a match is determined.
  final pulumi.Input<RouteSpecGrpcRouteAction> action;
  /// Criteria for determining an gRPC request match.
  final pulumi.Input<RouteSpecGrpcRouteMatch>? match;
  /// Retry policy.
  final pulumi.Input<RouteSpecGrpcRouteRetryPolicy>? retryPolicy;
  /// Types of timeouts.
  final pulumi.Input<RouteSpecGrpcRouteTimeout>? timeout;

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
      'action': pulumi.Input.mapInputValue<RouteSpecGrpcRouteAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'match': ?pulumi.Input.mapOptionalInputValue<RouteSpecGrpcRouteMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RouteSpecGrpcRouteRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'timeout': ?pulumi.Input.mapOptionalInputValue<RouteSpecGrpcRouteTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
    };
  }

  factory RouteSpecGrpcRoute.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRoute(
      action: (RouteSpecGrpcRouteAction.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      match: map['match'] == null ? null : (RouteSpecGrpcRouteMatch.fromMap((map['match'] as Map).cast<String, dynamic>())).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (RouteSpecGrpcRouteRetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>())).input(),
      timeout: map['timeout'] == null ? null : (RouteSpecGrpcRouteTimeout.fromMap((map['timeout'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

