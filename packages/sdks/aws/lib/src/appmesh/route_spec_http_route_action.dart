// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http_route_action_weighted_target.dart';

class RouteSpecHttpRouteAction {
  /// Targets that traffic is routed to when a request matches the route.
  /// You can specify one or more targets and their relative weights with which to distribute traffic.
  final pulumi.Input<List<RouteSpecHttpRouteActionWeightedTarget>> weightedTargets;

  /// Creates a new [RouteSpecHttpRouteAction].
  /// [weightedTargets] Targets that traffic is routed to when a request matches the route.
  const RouteSpecHttpRouteAction({
    required this.weightedTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weightedTargets': pulumi.Input.mapInputValue<List<RouteSpecHttpRouteActionWeightedTarget>, List<Map<String, dynamic>>>(weightedTargets, (value) => pulumi.Input.encodeList<RouteSpecHttpRouteActionWeightedTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RouteSpecHttpRouteAction.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteAction(
      weightedTargets: pulumi.Input.fromValue(pulumi.Input.decodeList<RouteSpecHttpRouteActionWeightedTarget>(map['weightedTargets']!, (value) => RouteSpecHttpRouteActionWeightedTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

