// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_tcp_route_action_weighted_target.dart';

class GetRouteSpecTcpRouteAction {
  final List<GetRouteSpecTcpRouteActionWeightedTarget> weightedTargets;

  /// Creates a new [GetRouteSpecTcpRouteAction].
  /// [weightedTargets] Required.
  GetRouteSpecTcpRouteAction({required this.weightedTargets});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weightedTargets':
          pulumi.Input.encodeList<
            GetRouteSpecTcpRouteActionWeightedTarget,
            Map<String, dynamic>
          >(weightedTargets, (value) => value.toMap()),
    };
  }

  factory GetRouteSpecTcpRouteAction.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecTcpRouteAction(
      weightedTargets:
          pulumi.Input.decodeList<GetRouteSpecTcpRouteActionWeightedTarget>(
            map['weightedTargets'],
            (value) => GetRouteSpecTcpRouteActionWeightedTarget.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
