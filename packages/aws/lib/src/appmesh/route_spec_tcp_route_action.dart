// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_tcp_route_action_weighted_target.dart';

class RouteSpecTcpRouteAction {
  /// Targets that traffic is routed to when a request matches the route.
  /// You can specify one or more targets and their relative weights with which to distribute traffic.
  final List<RouteSpecTcpRouteActionWeightedTarget> weightedTargets;

  /// Creates a new [RouteSpecTcpRouteAction].
  /// [weightedTargets] Targets that traffic is routed to when a request matches the route.
  RouteSpecTcpRouteAction({required this.weightedTargets});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weightedTargets':
          pulumi.Input.encodeList<
            RouteSpecTcpRouteActionWeightedTarget,
            Map<String, dynamic>
          >(weightedTargets, (value) => value.toMap()),
    };
  }

  factory RouteSpecTcpRouteAction.fromMap(Map<String, dynamic> map) {
    return RouteSpecTcpRouteAction(
      weightedTargets:
          pulumi.Input.decodeList<RouteSpecTcpRouteActionWeightedTarget>(
            map['weightedTargets'],
            (value) => RouteSpecTcpRouteActionWeightedTarget.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
