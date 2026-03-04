// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination {
  /// The ID of the GA instance.
  final pulumi.Input<String> acceleratorId;

  /// The ID of the Custom Routing Endpoint Group Destination.
  final pulumi.Input<String> customRoutingEndpointGroupDestinationId;

  /// The ID of the endpoint group.
  final pulumi.Input<String> endpointGroupId;

  /// The start port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  final pulumi.Input<int> fromPort;

  /// The id of the Global Accelerator Custom Routing Endpoint Group Destination. It formats as `&lt;endpoint_group_id&gt;:&lt;custom_routing_endpoint_group_destination_id&gt;`.
  final pulumi.Input<String> id;

  /// The ID of the listener.
  final pulumi.Input<String> listenerId;

  /// The backend service protocol of the endpoint group. Valid values: `TCP`, `UDP`, `TCP, UDP`.
  final pulumi.Input<List<String>> protocols;

  /// The end port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  final pulumi.Input<int> toPort;

  /// Creates a new [GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination].
  /// [acceleratorId] The ID of the GA instance.
  /// [customRoutingEndpointGroupDestinationId] The ID of the Custom Routing Endpoint Group Destination.
  /// [endpointGroupId] The ID of the endpoint group.
  /// [fromPort] The start port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  /// [id] The id of the Global Accelerator Custom Routing Endpoint Group Destination. It formats as `&lt;endpoint_group_id&gt;:&lt;custom_routing_endpoint_group_destination_id&gt;`.
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
      'customRoutingEndpointGroupDestinationId':
          customRoutingEndpointGroupDestinationId,
      'endpointGroupId': endpointGroupId,
      'fromPort': fromPort,
      'id': id,
      'listenerId': listenerId,
      'protocols': protocols,
      'toPort': toPort,
    };
  }

  factory GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      customRoutingEndpointGroupDestinationId: pulumi.Input.fromValue(
        map['customRoutingEndpointGroupDestinationId'] as String,
      ),
      endpointGroupId: pulumi.Input.fromValue(map['endpointGroupId'] as String),
      fromPort: pulumi.Input.fromValue(map['fromPort'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      protocols: pulumi.Input.fromValue(
        (map['protocols'] as List).cast<String>(),
      ),
      toPort: pulumi.Input.fromValue(map['toPort'] as int),
    );
  }
}
