// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_gateway_route_spec_http_route_action_target_virtual_service/get_gateway_route_spec_http_route_action_target_virtual_service.dart';

class GetGatewayRouteSpecHttpRouteActionTarget {
  final int port;
  final List<GetGatewayRouteSpecHttpRouteActionTargetVirtualService>
      virtualServices;

  GetGatewayRouteSpecHttpRouteActionTarget({
    required this.port,
    required this.virtualServices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['virtualServices'] = Input.encodeList<
        GetGatewayRouteSpecHttpRouteActionTargetVirtualService,
        Map<String, dynamic>>(virtualServices, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecHttpRouteActionTarget.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteActionTarget(
      port: map['port'] as int,
      virtualServices: Input.decodeList<
              GetGatewayRouteSpecHttpRouteActionTargetVirtualService>(
          map['virtualServices'],
          (value) =>
              GetGatewayRouteSpecHttpRouteActionTargetVirtualService.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
