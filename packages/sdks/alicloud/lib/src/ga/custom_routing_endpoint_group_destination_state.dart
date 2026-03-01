// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomRoutingEndpointGroupDestination resources.
class CustomRoutingEndpointGroupDestinationState {
  /// The ID of the GA instance.
  final pulumi.Input<String>? acceleratorId;
  /// The ID of the Custom Routing Endpoint Group Destination.
  final pulumi.Input<String>? customRoutingEndpointGroupDestinationId;
  /// The ID of the endpoint group.
  final pulumi.Input<String>? endpointGroupId;
  /// The start port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  final pulumi.Input<int>? fromPort;
  /// The ID of the listener.
  final pulumi.Input<String>? listenerId;
  /// The backend service protocol of the endpoint group. Valid values: `TCP`, `UDP`, `TCP, UDP`.
  final pulumi.Input<List<String>>? protocols;
  /// The status of the Custom Routing Endpoint Group Destination.
  final pulumi.Input<String>? status;
  /// The end port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  final pulumi.Input<int>? toPort;

  /// Creates a new [CustomRoutingEndpointGroupDestinationState].
  /// [acceleratorId] The ID of the GA instance.
  /// [customRoutingEndpointGroupDestinationId] The ID of the Custom Routing Endpoint Group Destination.
  /// [endpointGroupId] The ID of the endpoint group.
  /// [fromPort] The start port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  /// [listenerId] The ID of the listener.
  /// [protocols] The backend service protocol of the endpoint group. Valid values: `TCP`, `UDP`, `TCP, UDP`.
  /// [status] The status of the Custom Routing Endpoint Group Destination.
  /// [toPort] The end port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  CustomRoutingEndpointGroupDestinationState({
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? customRoutingEndpointGroupDestinationId,
    pulumi.Output<String>? endpointGroupId,
    pulumi.Output<int>? fromPort,
    pulumi.Output<String>? listenerId,
    pulumi.Output<List<String>>? protocols,
    pulumi.Output<String>? status,
    pulumi.Output<int>? toPort,
  }) :
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      customRoutingEndpointGroupDestinationId = pulumi.Input.asOptionalInput<String>(customRoutingEndpointGroupDestinationId),
      endpointGroupId = pulumi.Input.asOptionalInput<String>(endpointGroupId),
      fromPort = pulumi.Input.asOptionalInput<int>(fromPort),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      protocols = pulumi.Input.asOptionalInput<List<String>>(protocols),
      status = pulumi.Input.asOptionalInput<String>(status),
      toPort = pulumi.Input.asOptionalInput<int>(toPort);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'customRoutingEndpointGroupDestinationId': ?customRoutingEndpointGroupDestinationId,
      'endpointGroupId': ?endpointGroupId,
      'fromPort': ?fromPort,
      'listenerId': ?listenerId,
      'protocols': ?protocols,
      'status': ?status,
      'toPort': ?toPort,
    };
  }

  factory CustomRoutingEndpointGroupDestinationState.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointGroupDestinationState(
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      customRoutingEndpointGroupDestinationId: map['customRoutingEndpointGroupDestinationId'] == null ? null : pulumi.Output.create<String>(map['customRoutingEndpointGroupDestinationId'] as String),
      endpointGroupId: map['endpointGroupId'] == null ? null : pulumi.Output.create<String>(map['endpointGroupId'] as String),
      fromPort: map['fromPort'] == null ? null : pulumi.Output.create<int>(map['fromPort'] as int),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      protocols: map['protocols'] == null ? null : pulumi.Output.create<List<String>>((map['protocols'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      toPort: map['toPort'] == null ? null : pulumi.Output.create<int>(map['toPort'] as int),
    );
  }
}

