// ignore_for_file: unused_element, unnecessary_cast


class GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination {
  /// The ID of the GA instance.
  final String acceleratorId;
  /// The ID of the Custom Routing Endpoint Group Destination.
  final String customRoutingEndpointGroupDestinationId;
  /// The ID of the endpoint group.
  final String endpointGroupId;
  /// The start port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  final int fromPort;
  /// The id of the Global Accelerator Custom Routing Endpoint Group Destination. It formats as `<endpoint_group_id>:<custom_routing_endpoint_group_destination_id>`.
  final String id;
  /// The ID of the listener.
  final String listenerId;
  /// The backend service protocol of the endpoint group. Valid values: `TCP`, `UDP`, `TCP, UDP`.
  final List<String> protocols;
  /// The end port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  final int toPort;

  /// Creates a new [GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination].
  /// [acceleratorId] The ID of the GA instance.
  /// [customRoutingEndpointGroupDestinationId] The ID of the Custom Routing Endpoint Group Destination.
  /// [endpointGroupId] The ID of the endpoint group.
  /// [fromPort] The start port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  /// [id] The id of the Global Accelerator Custom Routing Endpoint Group Destination. It formats as `<endpoint_group_id>:<custom_routing_endpoint_group_destination_id>`.
  /// [listenerId] The ID of the listener.
  /// [protocols] The backend service protocol of the endpoint group. Valid values: `TCP`, `UDP`, `TCP, UDP`.
  /// [toPort] The end port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination({
    required this.acceleratorId,
    required this.customRoutingEndpointGroupDestinationId,
    required this.endpointGroupId,
    required this.fromPort,
    required this.id,
    required this.listenerId,
    required this.protocols,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'customRoutingEndpointGroupDestinationId': customRoutingEndpointGroupDestinationId,
      'endpointGroupId': endpointGroupId,
      'fromPort': fromPort,
      'id': id,
      'listenerId': listenerId,
      'protocols': protocols,
      'toPort': toPort,
    };
  }

  factory GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination(
      acceleratorId: map['acceleratorId'] as String,
      customRoutingEndpointGroupDestinationId: map['customRoutingEndpointGroupDestinationId'] as String,
      endpointGroupId: map['endpointGroupId'] as String,
      fromPort: map['fromPort'] as int,
      id: map['id'] as String,
      listenerId: map['listenerId'] as String,
      protocols: (map['protocols'] as List).cast<String>(),
      toPort: map['toPort'] as int,
    );
  }
}

