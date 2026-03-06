// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_grpc_route_action_target_virtual_service.dart';

class GetGatewayRouteSpecGrpcRouteActionTarget {
  final pulumi.Input<int> port;
  final pulumi.Input<List<GetGatewayRouteSpecGrpcRouteActionTargetVirtualService>> virtualServices;

  /// Creates a new [GetGatewayRouteSpecGrpcRouteActionTarget].
  /// [port] Required.
  /// [virtualServices] Required.
  const GetGatewayRouteSpecGrpcRouteActionTarget({
    required this.port,
    required this.virtualServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'virtualServices': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecGrpcRouteActionTargetVirtualService>, List<Map<String, dynamic>>>(virtualServices, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecGrpcRouteActionTargetVirtualService, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGatewayRouteSpecGrpcRouteActionTarget.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecGrpcRouteActionTarget(
      port: pulumi.Input.fromValue(map['port'] as int),
      virtualServices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecGrpcRouteActionTargetVirtualService>(map['virtualServices']!, (value) => GetGatewayRouteSpecGrpcRouteActionTargetVirtualService.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

