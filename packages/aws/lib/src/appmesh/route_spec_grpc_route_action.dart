// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_grpc_route_action_weighted_target.dart';

class RouteSpecGrpcRouteAction {
  /// Targets that traffic is routed to when a request matches the route.
  /// You can specify one or more targets and their relative weights with which to distribute traffic.
  final List<RouteSpecGrpcRouteActionWeightedTarget> weightedTargets;

  /// Creates a new [RouteSpecGrpcRouteAction].
  /// [weightedTargets] Targets that traffic is routed to when a request matches the route.
  RouteSpecGrpcRouteAction({
    required this.weightedTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weightedTargets': pulumi.Input.encodeList<RouteSpecGrpcRouteActionWeightedTarget, Map<String, dynamic>>(weightedTargets, (value) => value.toMap()),
    };
  }

  factory RouteSpecGrpcRouteAction.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRouteAction(
      weightedTargets: pulumi.Input.decodeList<RouteSpecGrpcRouteActionWeightedTarget>(map['weightedTargets'], (value) => RouteSpecGrpcRouteActionWeightedTarget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

