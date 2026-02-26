// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_http2_route_action_weighted_target/get_route_spec_http2_route_action_weighted_target.dart';

class GetRouteSpecHttp2RouteAction {
  final List<GetRouteSpecHttp2RouteActionWeightedTarget> weightedTargets;

  GetRouteSpecHttp2RouteAction({
    required this.weightedTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['weightedTargets'] = Input.encodeList<
        GetRouteSpecHttp2RouteActionWeightedTarget,
        Map<String, dynamic>>(weightedTargets, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpecHttp2RouteAction.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteAction(
      weightedTargets:
          Input.decodeList<GetRouteSpecHttp2RouteActionWeightedTarget>(
              map['weightedTargets'],
              (value) => GetRouteSpecHttp2RouteActionWeightedTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
