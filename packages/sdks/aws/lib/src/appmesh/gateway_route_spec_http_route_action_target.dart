// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http_route_action_target_virtual_service.dart';

class GatewayRouteSpecHttpRouteActionTarget {
  /// The port number that corresponds to the target for Virtual Service provider port. This is required when the provider (router or node) of the Virtual Service has multiple listeners.
  final pulumi.Input<int>? port;
  /// Virtual service gateway route target.
  final pulumi.Input<GatewayRouteSpecHttpRouteActionTargetVirtualService> virtualService;

  /// Creates a new [GatewayRouteSpecHttpRouteActionTarget].
  /// [port] The port number that corresponds to the target for Virtual Service provider port. This is required when the provider (router or node) of the Virtual Service has multiple listeners.
  /// [virtualService] Virtual service gateway route target.
  GatewayRouteSpecHttpRouteActionTarget({
    this.port,
    required this.virtualService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'virtualService': pulumi.Input.mapInputValue<GatewayRouteSpecHttpRouteActionTargetVirtualService, Map<String, dynamic>>(virtualService, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecHttpRouteActionTarget.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionTarget(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      virtualService: pulumi.Input.fromValue(GatewayRouteSpecHttpRouteActionTargetVirtualService.fromMap((map['virtualService']! as Map).cast<String, dynamic>())),
    );
  }
}

