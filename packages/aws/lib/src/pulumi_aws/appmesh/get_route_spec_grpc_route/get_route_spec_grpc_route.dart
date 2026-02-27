// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_spec_grpc_route_action/get_route_spec_grpc_route_action.dart';
import '../get_route_spec_grpc_route_match/get_route_spec_grpc_route_match.dart';
import '../get_route_spec_grpc_route_retry_policy/get_route_spec_grpc_route_retry_policy.dart';
import '../get_route_spec_grpc_route_timeout/get_route_spec_grpc_route_timeout.dart';

class GetRouteSpecGrpcRoute {
  final List<GetRouteSpecGrpcRouteAction> actions;
  final List<GetRouteSpecGrpcRouteMatch> matches;
  final List<GetRouteSpecGrpcRouteRetryPolicy> retryPolicies;
  final List<GetRouteSpecGrpcRouteTimeout> timeouts;

  GetRouteSpecGrpcRoute({
    required this.actions,
    required this.matches,
    required this.retryPolicies,
    required this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = pulumi.Input.encodeList<GetRouteSpecGrpcRouteAction,
        Map<String, dynamic>>(actions, (value) => value.toMap());
    map['matches'] = pulumi.Input.encodeList<GetRouteSpecGrpcRouteMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    map['retryPolicies'] = pulumi.Input.encodeList<
        GetRouteSpecGrpcRouteRetryPolicy,
        Map<String, dynamic>>(retryPolicies, (value) => value.toMap());
    map['timeouts'] = pulumi.Input.encodeList<GetRouteSpecGrpcRouteTimeout,
        Map<String, dynamic>>(timeouts, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpecGrpcRoute.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRoute(
      actions: pulumi.Input.decodeList<GetRouteSpecGrpcRouteAction>(
          map['actions'],
          (value) => GetRouteSpecGrpcRouteAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      matches: pulumi.Input.decodeList<GetRouteSpecGrpcRouteMatch>(
          map['matches'],
          (value) => GetRouteSpecGrpcRouteMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
      retryPolicies: pulumi.Input.decodeList<GetRouteSpecGrpcRouteRetryPolicy>(
          map['retryPolicies'],
          (value) => GetRouteSpecGrpcRouteRetryPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      timeouts: pulumi.Input.decodeList<GetRouteSpecGrpcRouteTimeout>(
          map['timeouts'],
          (value) => GetRouteSpecGrpcRouteTimeout.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
