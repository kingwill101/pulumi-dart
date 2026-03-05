// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_grpc_route_action_target.dart';

class GetGatewayRouteSpecGrpcRouteAction {
  final pulumi.Input<List<GetGatewayRouteSpecGrpcRouteActionTarget>> targets;

  /// Creates a new [GetGatewayRouteSpecGrpcRouteAction].
  /// [targets] Required.
  GetGatewayRouteSpecGrpcRouteAction({
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targets': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecGrpcRouteActionTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecGrpcRouteActionTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGatewayRouteSpecGrpcRouteAction.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecGrpcRouteAction(
      targets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecGrpcRouteActionTarget>(map['targets']!, (value) => GetGatewayRouteSpecGrpcRouteActionTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

