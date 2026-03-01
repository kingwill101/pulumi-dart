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
  GatewayEndpointRouteTableAttachmentState({
    pulumi.Output<String>? gatewayEndpointId,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? status,
  }) :
      gatewayEndpointId = pulumi.Input.asOptionalInput<String>(gatewayEndpointId),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayEndpointId': ?gatewayEndpointId,
      'routeTableId': ?routeTableId,
      'status': ?status,
    };
  }

  factory GatewayEndpointRouteTableAttachmentState.fromMap(Map<String, dynamic> map) {
    return GatewayEndpointRouteTableAttachmentState(
      gatewayEndpointId: map['gatewayEndpointId'] == null ? null : pulumi.Output.create<String>(map['gatewayEndpointId'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

