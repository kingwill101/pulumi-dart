// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_action_weighted_target.dart';

class GetRouteSpecHttpRouteAction {
  final pulumi.Input<List<GetRouteSpecHttpRouteActionWeightedTarget>> weightedTargets;

  /// Creates a new [GetRouteSpecHttpRouteAction].
  /// [weightedTargets] Required.
  const GetRouteSpecHttpRouteAction({
    required this.weightedTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weightedTargets': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteActionWeightedTarget>, List<Map<String, dynamic>>>(weightedTargets, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteActionWeightedTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRouteSpecHttpRouteAction.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteAction(
      weightedTargets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecHttpRouteActionWeightedTarget>(map['weightedTargets']!, (value) => GetRouteSpecHttpRouteActionWeightedTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
