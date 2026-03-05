// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_grpc_route_action_target.dart';

class GatewayRouteSpecGrpcRouteAction {
  /// Target that traffic is routed to when a request matches the gateway route.
  final pulumi.Input<GatewayRouteSpecGrpcRouteActionTarget> target;

  /// Creates a new [GatewayRouteSpecGrpcRouteAction].
  /// [target] Target that traffic is routed to when a request matches the gateway route.
  GatewayRouteSpecGrpcRouteAction({
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': pulumi.Input.mapInputValue<GatewayRouteSpecGrpcRouteActionTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecGrpcRouteAction.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecGrpcRouteAction(
      target: pulumi.Input.fromValue(GatewayRouteSpecGrpcRouteActionTarget.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}

