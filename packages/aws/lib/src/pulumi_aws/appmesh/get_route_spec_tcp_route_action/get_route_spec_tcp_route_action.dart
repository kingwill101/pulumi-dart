// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_tcp_route_action_weighted_target/get_route_spec_tcp_route_action_weighted_target.dart';

class GetRouteSpecTcpRouteAction {
  final List<GetRouteSpecTcpRouteActionWeightedTarget> weightedTargets;

  GetRouteSpecTcpRouteAction({
    required this.weightedTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['weightedTargets'] = Input.encodeList<
        GetRouteSpecTcpRouteActionWeightedTarget,
        Map<String, dynamic>>(weightedTargets, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpecTcpRouteAction.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecTcpRouteAction(
      weightedTargets:
          Input.decodeList<GetRouteSpecTcpRouteActionWeightedTarget>(
              map['weightedTargets'],
              (value) => GetRouteSpecTcpRouteActionWeightedTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
