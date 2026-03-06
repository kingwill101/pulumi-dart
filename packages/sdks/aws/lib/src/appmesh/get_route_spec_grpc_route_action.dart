// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route_action_weighted_target.dart';

class GetRouteSpecGrpcRouteAction {
  final pulumi.Input<List<GetRouteSpecGrpcRouteActionWeightedTarget>> weightedTargets;

  /// Creates a new [GetRouteSpecGrpcRouteAction].
  /// [weightedTargets] Required.
  const GetRouteSpecGrpcRouteAction({
    required this.weightedTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weightedTargets': pulumi.Input.mapInputValue<List<GetRouteSpecGrpcRouteActionWeightedTarget>, List<Map<String, dynamic>>>(weightedTargets, (value) => pulumi.Input.encodeList<GetRouteSpecGrpcRouteActionWeightedTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRouteSpecGrpcRouteAction.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteAction(
      weightedTargets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecGrpcRouteActionWeightedTarget>(map['weightedTargets']!, (value) => GetRouteSpecGrpcRouteActionWeightedTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

