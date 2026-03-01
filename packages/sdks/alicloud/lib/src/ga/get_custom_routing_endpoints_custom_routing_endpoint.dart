// ignore_for_file: unused_element, unnecessary_cast


class GetCustomRoutingEndpointsCustomRoutingEndpoint {
  /// The ID of the GA instance.
  final String acceleratorId;
  /// The ID of the Custom Routing Endpoint.
  final String customRoutingEndpointId;
  /// The ID of the endpoint (vSwitch).
  final String endpoint;
  /// The ID of the endpoint group.
  final String endpointGroupId;
  /// The id of the Global Accelerator Custom Routing Endpoint. It formats as `<endpoint_group_id>:<custom_routing_endpoint_id>`.
  final String id;
  /// The ID of the custom routing listener.
  final String listenerId;
  /// The access policy of traffic for the specified endpoint.
  final String trafficToEndpointPolicy;
  /// The backend service type of the endpoint.
  final String type;

  /// Creates a new [GetCustomRoutingEndpointsCustomRoutingEndpoint].
  /// [acceleratorId] The ID of the GA instance.
  /// [customRoutingEndpointId] The ID of the Custom Routing Endpoint.
  /// [endpoint] The ID of the endpoint (vSwitch).
  /// [endpointGroupId] The ID of the endpoint group.
  /// [id] The id of the Global Accelerator Custom Routing Endpoint. It formats as `<endpoint_group_id>:<custom_routing_endpoint_id>`.
  /// [listenerId] The ID of the custom routing listener.
  /// [trafficToEndpointPolicy] The access policy of traffic for the specified endpoint.
  /// [type] The backend service type of the endpoint.
  GetCustomRoutingEndpointsCustomRoutingEndpoint({
    required this.acceleratorId,
    required this.customRoutingEndpointId,
    required this.endpoint,
    required this.endpointGroupId,
    required this.id,
    required this.listenerId,
    required this.trafficToEndpointPolicy,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'customRoutingEndpointId': customRoutingEndpointId,
      'endpoint': endpoint,
      'endpointGroupId': endpointGroupId,
      'id': id,
      'listenerId': listenerId,
      'trafficToEndpointPolicy': trafficToEndpointPolicy,
      'type': type,
    };
  }

  factory GetCustomRoutingEndpointsCustomRoutingEndpoint.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointsCustomRoutingEndpoint(
      acceleratorId: map['acceleratorId'] as String,
      customRoutingEndpointId: map['customRoutingEndpointId'] as String,
      endpoint: map['endpoint'] as String,
      endpointGroupId: map['endpointGroupId'] as String,
      id: map['id'] as String,
      listenerId: map['listenerId'] as String,
      trafficToEndpointPolicy: map['trafficToEndpointPolicy'] as String,
      type: map['type'] as String,
    );
  }
}

