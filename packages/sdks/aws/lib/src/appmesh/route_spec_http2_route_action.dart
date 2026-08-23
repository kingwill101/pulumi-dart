// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http2_route_action_weighted_target.dart';

class RouteSpecHttp2RouteAction {
  /// Targets that traffic is routed to when a request matches the route. You can specify one or more targets and their relative weights with which to distribute traffic. See `spec.tcp_route.action.weighted_target` Block for details.
  final pulumi.Input<List<RouteSpecHttp2RouteActionWeightedTarget>> weightedTargets;

  /// Creates a new [RouteSpecHttp2RouteAction].
  /// [weightedTargets] Targets that traffic is routed to when a request matches the route. You can specify one or more targets and their relative weights with which to distribute traffic. See `spec.tcp_route.action.weighted_target` Block for details.
  const RouteSpecHttp2RouteAction({
    required this.weightedTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weightedTargets': pulumi.Input.mapInputValue<List<RouteSpecHttp2RouteActionWeightedTarget>, List<Map<String, dynamic>>>(weightedTargets, (value) => pulumi.Input.encodeList<RouteSpecHttp2RouteActionWeightedTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RouteSpecHttp2RouteAction.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteAction(
      weightedTargets: pulumi.Input.fromValue(pulumi.Input.decodeList<RouteSpecHttp2RouteActionWeightedTarget>(map['weightedTargets']!, (value) => RouteSpecHttp2RouteActionWeightedTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
