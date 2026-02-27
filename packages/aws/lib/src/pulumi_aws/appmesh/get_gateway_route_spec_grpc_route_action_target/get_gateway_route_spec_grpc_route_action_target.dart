// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_gateway_route_spec_grpc_route_action_target_virtual_service/get_gateway_route_spec_grpc_route_action_target_virtual_service.dart';

class GetGatewayRouteSpecGrpcRouteActionTarget {
  final int port;
  final List<GetGatewayRouteSpecGrpcRouteActionTargetVirtualService>
      virtualServices;

  GetGatewayRouteSpecGrpcRouteActionTarget({
    required this.port,
    required this.virtualServices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['virtualServices'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecGrpcRouteActionTargetVirtualService,
        Map<String, dynamic>>(virtualServices, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecGrpcRouteActionTarget.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecGrpcRouteActionTarget(
      port: map['port'] as int,
      virtualServices: pulumi.Input.decodeList<
              GetGatewayRouteSpecGrpcRouteActionTargetVirtualService>(
          map['virtualServices'],
          (value) =>
              GetGatewayRouteSpecGrpcRouteActionTargetVirtualService.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
