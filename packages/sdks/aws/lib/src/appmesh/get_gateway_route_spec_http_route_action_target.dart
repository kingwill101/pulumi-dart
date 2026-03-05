// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_action_target_virtual_service.dart';

class GetGatewayRouteSpecHttpRouteActionTarget {
  final pulumi.Input<int> port;
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteActionTargetVirtualService>> virtualServices;

  /// Creates a new [GetGatewayRouteSpecHttpRouteActionTarget].
  /// [port] Required.
  /// [virtualServices] Required.
  GetGatewayRouteSpecHttpRouteActionTarget({
    required this.port,
    required this.virtualServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'virtualServices': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteActionTargetVirtualService>, List<Map<String, dynamic>>>(virtualServices, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteActionTargetVirtualService, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGatewayRouteSpecHttpRouteActionTarget.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteActionTarget(
      port: pulumi.Input.fromValue(map['port'] as int),
      virtualServices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteActionTargetVirtualService>(map['virtualServices']!, (value) => GetGatewayRouteSpecHttpRouteActionTargetVirtualService.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

