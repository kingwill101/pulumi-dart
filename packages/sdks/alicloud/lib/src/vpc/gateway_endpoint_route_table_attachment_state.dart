// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayEndpointRouteTableAttachment resources.
class GatewayEndpointRouteTableAttachmentState {
  /// The ID of the gateway endpoint instance to which you want to associate the route table.
  final pulumi.Input<String>? gatewayEndpointId;
  /// Routing table ID.
  final pulumi.Input<String>? routeTableId;
  /// Status of the gateway endpoint.
  final pulumi.Input<String>? status;

  /// Creates a new [GatewayEndpointRouteTableAttachmentState].
  /// [gatewayEndpointId] The ID of the gateway endpoint instance to which you want to associate the route table.
  /// [routeTableId] Routing table ID.
  /// [status] Status of the gateway endpoint.
  const GatewayEndpointRouteTableAttachmentState({
    this.gatewayEndpointId,
    this.routeTableId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayEndpointId': ?gatewayEndpointId,
      'routeTableId': ?routeTableId,
      'status': ?status,
    };
  }

  factory GatewayEndpointRouteTableAttachmentState.fromMap(Map<String, dynamic> map) {
    return GatewayEndpointRouteTableAttachmentState(
      gatewayEndpointId: (() { final guardedValue = map['gatewayEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

