// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_action_weighted_target.dart';

class GetRouteSpecHttpRouteAction {
  final List<GetRouteSpecHttpRouteActionWeightedTarget> weightedTargets;

  /// Creates a new [GetRouteSpecHttpRouteAction].
  /// [weightedTargets] Required.
  GetRouteSpecHttpRouteAction({
    required this.weightedTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['weightedTargets'] = pulumi.Input.encodeList<
        GetRouteSpecHttpRouteActionWeightedTarget,
        Map<String, dynamic>>(weightedTargets, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpecHttpRouteAction.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteAction(
      weightedTargets:
          pulumi.Input.decodeList<GetRouteSpecHttpRouteActionWeightedTarget>(
              map['weightedTargets'],
              (value) => GetRouteSpecHttpRouteActionWeightedTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
