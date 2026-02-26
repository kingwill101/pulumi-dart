// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_http_route_action_weighted_target/get_route_spec_http_route_action_weighted_target.dart';

class GetRouteSpecHttpRouteAction {
  final List<GetRouteSpecHttpRouteActionWeightedTarget> weightedTargets;

  GetRouteSpecHttpRouteAction({
    required this.weightedTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['weightedTargets'] = Input.encodeList<
        GetRouteSpecHttpRouteActionWeightedTarget,
        Map<String, dynamic>>(weightedTargets, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpecHttpRouteAction.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteAction(
      weightedTargets:
          Input.decodeList<GetRouteSpecHttpRouteActionWeightedTarget>(
              map['weightedTargets'],
              (value) => GetRouteSpecHttpRouteActionWeightedTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
