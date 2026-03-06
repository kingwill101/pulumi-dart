// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_grpc_route_action_target_virtual_service.dart';

class GatewayRouteSpecGrpcRouteActionTarget {
  /// The port number that corresponds to the target for Virtual Service provider port. This is required when the provider (router or node) of the Virtual Service has multiple listeners.
  final pulumi.Input<int>? port;
  /// Virtual service gateway route target.
  final pulumi.Input<GatewayRouteSpecGrpcRouteActionTargetVirtualService> virtualService;

  /// Creates a new [GatewayRouteSpecGrpcRouteActionTarget].
  /// [port] The port number that corresponds to the target for Virtual Service provider port. This is required when the provider (router or node) of the Virtual Service has multiple listeners.
  /// [virtualService] Virtual service gateway route target.
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
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      virtualService: pulumi.Input.fromValue(GatewayRouteSpecGrpcRouteActionTargetVirtualService.fromMap((map['virtualService']! as Map).cast<String, dynamic>())),
    );
  }
}

