// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http2_route_action_target_virtual_service.dart';

class GetGatewayRouteSpecHttp2RouteActionTarget {
  final int port;
  final List<GetGatewayRouteSpecHttp2RouteActionTargetVirtualService>
  virtualServices;

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
      'virtualServices':
          pulumi.Input.encodeList<
            GetGatewayRouteSpecHttp2RouteActionTargetVirtualService,
            Map<String, dynamic>
          >(virtualServices, (value) => value.toMap()),
    };
  }

  factory GetGatewayRouteSpecHttp2RouteActionTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGatewayRouteSpecHttp2RouteActionTarget(
      port: map['port'] as int,
      virtualServices:
          pulumi.Input.decodeList<
            GetGatewayRouteSpecHttp2RouteActionTargetVirtualService
          >(
            map['virtualServices'],
            (value) =>
                GetGatewayRouteSpecHttp2RouteActionTargetVirtualService.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
