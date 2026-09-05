// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_grpc_route_action_target_virtual_service.dart';

class GatewayRouteSpecGrpcRouteActionTarget {
  /// Port number to match from the request.
  final pulumi.Input<int?>? port;
  /// Virtual service gateway route target. See `spec.http2_route.action.target.virtual_service` Block for details.
  final pulumi.Input<GatewayRouteSpecGrpcRouteActionTargetVirtualService> virtualService;

  /// Creates a new [GatewayRouteSpecGrpcRouteActionTarget].
  /// [port] Port number to match from the request.
  /// [virtualService] Virtual service gateway route target. See `spec.http2_route.action.target.virtual_service` Block for details.
  const GatewayRouteSpecGrpcRouteActionTarget({
    this.port,
    required this.virtualService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'virtualService': pulumi.Input.mapInputValue<GatewayRouteSpecGrpcRouteActionTargetVirtualService, Map<String, dynamic>>(virtualService, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecGrpcRouteActionTarget.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecGrpcRouteActionTarget(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      virtualService: pulumi.Input.fromValue(GatewayRouteSpecGrpcRouteActionTargetVirtualService.fromMap((map['virtualService']! as Map).cast<String, dynamic>())),
    );
  }
}
