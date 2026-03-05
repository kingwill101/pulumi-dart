// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http2_route_action_target_virtual_service.dart';

class GetGatewayRouteSpecHttp2RouteActionTarget {
  final pulumi.Input<int> port;
  final pulumi.Input<List<GetGatewayRouteSpecHttp2RouteActionTargetVirtualService>> virtualServices;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteActionTarget].
  /// [port] Required.
  /// [virtualServices] Required.
  GetGatewayRouteSpecHttp2RouteActionTarget({
    required this.port,
    required this.virtualServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'virtualServices': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2RouteActionTargetVirtualService>, List<Map<String, dynamic>>>(virtualServices, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteActionTargetVirtualService, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGatewayRouteSpecHttp2RouteActionTarget.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteActionTarget(
      port: pulumi.Input.fromValue(map['port'] as int),
      virtualServices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteActionTargetVirtualService>(map['virtualServices']!, (value) => GetGatewayRouteSpecHttp2RouteActionTargetVirtualService.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

