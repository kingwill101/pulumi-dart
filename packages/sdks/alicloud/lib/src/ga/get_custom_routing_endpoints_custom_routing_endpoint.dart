// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomRoutingEndpointsCustomRoutingEndpoint {
  /// The ID of the GA instance.
  final pulumi.Input<String> acceleratorId;

  /// The ID of the Custom Routing Endpoint.
  final pulumi.Input<String> customRoutingEndpointId;

  /// The ID of the endpoint (vSwitch).
  final pulumi.Input<String> endpoint;

  /// The ID of the endpoint group.
  final pulumi.Input<String> endpointGroupId;

  /// The id of the Global Accelerator Custom Routing Endpoint. It formats as `&lt;endpoint_group_id&gt;:&lt;custom_routing_endpoint_id&gt;`.
  final pulumi.Input<String> id;

  /// The ID of the custom routing listener.
  final pulumi.Input<String> listenerId;

  /// The access policy of traffic for the specified endpoint.
  final pulumi.Input<String> trafficToEndpointPolicy;

  /// The backend service type of the endpoint.
  final pulumi.Input<String> type;

  /// Creates a new [GetCustomRoutingEndpointsCustomRoutingEndpoint].
  /// [acceleratorId] The ID of the GA instance.
  /// [customRoutingEndpointId] The ID of the Custom Routing Endpoint.
  /// [endpoint] The ID of the endpoint (vSwitch).
  /// [endpointGroupId] The ID of the endpoint group.
  /// [id] The id of the Global Accelerator Custom Routing Endpoint. It formats as `&lt;endpoint_group_id&gt;:&lt;custom_routing_endpoint_id&gt;`.
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

  factory GetCustomRoutingEndpointsCustomRoutingEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCustomRoutingEndpointsCustomRoutingEndpoint(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      customRoutingEndpointId: pulumi.Input.fromValue(
        map['customRoutingEndpointId'] as String,
      ),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      endpointGroupId: pulumi.Input.fromValue(map['endpointGroupId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      trafficToEndpointPolicy: pulumi.Input.fromValue(
        map['trafficToEndpointPolicy'] as String,
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
