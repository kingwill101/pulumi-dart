// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_action_target_virtual_service.dart';

class GetGatewayRouteSpecHttpRouteActionTarget {
  final int port;
  final List<GetGatewayRouteSpecHttpRouteActionTargetVirtualService>
  virtualServices;

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
      'virtualServices':
          pulumi.Input.encodeList<
            GetGatewayRouteSpecHttpRouteActionTargetVirtualService,
            Map<String, dynamic>
          >(virtualServices, (value) => value.toMap()),
    };
  }

  factory GetGatewayRouteSpecHttpRouteActionTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGatewayRouteSpecHttpRouteActionTarget(
      port: map['port'] as int,
      virtualServices:
          pulumi.Input.decodeList<
            GetGatewayRouteSpecHttpRouteActionTargetVirtualService
          >(
            map['virtualServices'],
            (value) =>
                GetGatewayRouteSpecHttpRouteActionTargetVirtualService.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
