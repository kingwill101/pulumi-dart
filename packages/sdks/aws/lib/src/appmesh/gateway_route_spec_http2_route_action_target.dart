// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http2_route_action_target_virtual_service.dart';

class GatewayRouteSpecHttp2RouteActionTarget {
  /// Port number to match from the request.
  final pulumi.Input<int>? port;
  /// Virtual service gateway route target. See `spec.http2_route.action.target.virtual_service` Block for details.
  final pulumi.Input<GatewayRouteSpecHttp2RouteActionTargetVirtualService> virtualService;

  /// Creates a new [GatewayRouteSpecHttp2RouteActionTarget].
  /// [port] Port number to match from the request.
  /// [virtualService] Virtual service gateway route target. See `spec.http2_route.action.target.virtual_service` Block for details.
  const GatewayRouteSpecHttp2RouteActionTarget({
    this.port,
    required this.virtualService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'virtualService': pulumi.Input.mapInputValue<GatewayRouteSpecHttp2RouteActionTargetVirtualService, Map<String, dynamic>>(virtualService, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecHttp2RouteActionTarget.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteActionTarget(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      virtualService: pulumi.Input.fromValue(GatewayRouteSpecHttp2RouteActionTargetVirtualService.fromMap((map['virtualService']! as Map).cast<String, dynamic>())),
    );
  }
}
