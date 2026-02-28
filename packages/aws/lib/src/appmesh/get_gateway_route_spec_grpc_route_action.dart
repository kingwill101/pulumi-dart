// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_grpc_route_action_target.dart';

class GetGatewayRouteSpecGrpcRouteAction {
  final List<GetGatewayRouteSpecGrpcRouteActionTarget> targets;

  /// Creates a new [GetGatewayRouteSpecGrpcRouteAction].
  /// [targets] Required.
  GetGatewayRouteSpecGrpcRouteAction({
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targets'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecGrpcRouteActionTarget,
        Map<String, dynamic>>(targets, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecGrpcRouteAction.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecGrpcRouteAction(
      targets:
          pulumi.Input.decodeList<GetGatewayRouteSpecGrpcRouteActionTarget>(
              map['targets'],
              (value) => GetGatewayRouteSpecGrpcRouteActionTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
