// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http2_route_action_weighted_target.dart';

class GetRouteSpecHttp2RouteAction {
  final pulumi.Input<List<GetRouteSpecHttp2RouteActionWeightedTarget>> weightedTargets;

  /// Creates a new [GetRouteSpecHttp2RouteAction].
  /// [weightedTargets] Required.
  GetRouteSpecHttp2RouteAction({
    required this.weightedTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weightedTargets': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteActionWeightedTarget>, List<Map<String, dynamic>>>(weightedTargets, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteActionWeightedTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRouteSpecHttp2RouteAction.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteAction(
      weightedTargets: (pulumi.Input.decodeList<GetRouteSpecHttp2RouteActionWeightedTarget>(map['weightedTargets'], (value) => GetRouteSpecHttp2RouteActionWeightedTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

