// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_gateway_endpoint_route_table_attachment_gateway_endpoint_route_table_attachment_args_doc}
/// The set of arguments for GatewayEndpointRouteTableAttachment.
/// {@endtemplate}
/// {@macro pulumi_vpc_gateway_endpoint_route_table_attachment_gateway_endpoint_route_table_attachment_args_doc}
class GatewayEndpointRouteTableAttachmentArgs {
  /// The ID of the gateway endpoint instance to which you want to associate the route table.
  final pulumi.Input<String> gatewayEndpointId;
  /// Routing table ID.
  final pulumi.Input<String> routeTableId;

  /// Creates a new [GatewayEndpointRouteTableAttachmentArgs].
  /// [gatewayEndpointId] The ID of the gateway endpoint instance to which you want to associate the route table.
  /// [routeTableId] Routing table ID.
  const GatewayEndpointRouteTableAttachmentArgs({
    required this.gatewayEndpointId,
    required this.routeTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayEndpointId': gatewayEndpointId,
      'routeTableId': routeTableId,
    };
  }

  factory GatewayEndpointRouteTableAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GatewayEndpointRouteTableAttachmentArgs(
      gatewayEndpointId: pulumi.Input.fromValue(map['gatewayEndpointId'] as String),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
    );
  }
}

