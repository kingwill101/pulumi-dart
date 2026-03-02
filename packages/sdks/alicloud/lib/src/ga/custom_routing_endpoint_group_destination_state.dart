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
    this.acceleratorId,
    this.customRoutingEndpointGroupDestinationId,
    this.endpointGroupId,
    this.fromPort,
    this.listenerId,
    this.protocols,
    this.status,
    this.toPort,
  });

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
      acceleratorId: map['acceleratorId'] == null ? null : (map['acceleratorId'] as String).input(),
      customRoutingEndpointGroupDestinationId: map['customRoutingEndpointGroupDestinationId'] == null ? null : (map['customRoutingEndpointGroupDestinationId'] as String).input(),
      endpointGroupId: map['endpointGroupId'] == null ? null : (map['endpointGroupId'] as String).input(),
      fromPort: map['fromPort'] == null ? null : (map['fromPort'] as int).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId'] as String).input(),
      protocols: map['protocols'] == null ? null : ((map['protocols'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      toPort: map['toPort'] == null ? null : (map['toPort'] as int).input(),
    );
  }
}

