// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../route_spec_http2_route_action_weighted_target/route_spec_http2_route_action_weighted_target.dart';

class RouteSpecHttp2RouteAction {
  /// Targets that traffic is routed to when a request matches the route.
  /// You can specify one or more targets and their relative weights with which to distribute traffic.
  final List<RouteSpecHttp2RouteActionWeightedTarget> weightedTargets;

  RouteSpecHttp2RouteAction({
    required this.weightedTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['weightedTargets'] = pulumi.Input.encodeList<
        RouteSpecHttp2RouteActionWeightedTarget,
        Map<String, dynamic>>(weightedTargets, (value) => value.toMap());
    return map;
  }

  factory RouteSpecHttp2RouteAction.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteAction(
      weightedTargets:
          pulumi.Input.decodeList<RouteSpecHttp2RouteActionWeightedTarget>(
              map['weightedTargets'],
              (value) => RouteSpecHttp2RouteActionWeightedTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
