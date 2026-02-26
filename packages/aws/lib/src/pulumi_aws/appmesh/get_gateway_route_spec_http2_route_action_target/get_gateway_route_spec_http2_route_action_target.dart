// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_gateway_route_spec_http2_route_action_target_virtual_service/get_gateway_route_spec_http2_route_action_target_virtual_service.dart';

class GetGatewayRouteSpecHttp2RouteActionTarget {
  final int port;
  final List<GetGatewayRouteSpecHttp2RouteActionTargetVirtualService>
      virtualServices;

  GetGatewayRouteSpecHttp2RouteActionTarget({
    required this.port,
    required this.virtualServices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['virtualServices'] = Input.encodeList<
        GetGatewayRouteSpecHttp2RouteActionTargetVirtualService,
        Map<String, dynamic>>(virtualServices, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecHttp2RouteActionTarget.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteActionTarget(
      port: map['port'] as int,
      virtualServices: Input.decodeList<
              GetGatewayRouteSpecHttp2RouteActionTargetVirtualService>(
          map['virtualServices'],
          (value) =>
              GetGatewayRouteSpecHttp2RouteActionTargetVirtualService.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
