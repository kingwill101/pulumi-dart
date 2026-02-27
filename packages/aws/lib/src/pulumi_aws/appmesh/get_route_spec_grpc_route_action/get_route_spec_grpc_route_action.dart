// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_spec_grpc_route_action_weighted_target/get_route_spec_grpc_route_action_weighted_target.dart';

class GetRouteSpecGrpcRouteAction {
  final List<GetRouteSpecGrpcRouteActionWeightedTarget> weightedTargets;

  GetRouteSpecGrpcRouteAction({
    required this.weightedTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['weightedTargets'] = pulumi.Input.encodeList<
        GetRouteSpecGrpcRouteActionWeightedTarget,
        Map<String, dynamic>>(weightedTargets, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpecGrpcRouteAction.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteAction(
      weightedTargets:
          pulumi.Input.decodeList<GetRouteSpecGrpcRouteActionWeightedTarget>(
              map['weightedTargets'],
              (value) => GetRouteSpecGrpcRouteActionWeightedTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
