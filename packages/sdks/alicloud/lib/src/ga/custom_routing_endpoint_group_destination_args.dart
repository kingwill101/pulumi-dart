// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_custom_routing_endpoint_group_destination_custom_routing_endpoint_group_destination_args_doc}
/// The set of arguments for CustomRoutingEndpointGroupDestination.
/// {@endtemplate}
/// {@macro pulumi_ga_custom_routing_endpoint_group_destination_custom_routing_endpoint_group_destination_args_doc}
class CustomRoutingEndpointGroupDestinationArgs {
  /// The ID of the endpoint group.
  final pulumi.Input<String> endpointGroupId;
  /// The start port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  final pulumi.Input<int> fromPort;
  /// The backend service protocol of the endpoint group. Valid values: `TCP`, `UDP`, `TCP, UDP`.
  final pulumi.Input<List<String>> protocols;
  /// The end port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  final pulumi.Input<int> toPort;

  /// Creates a new [CustomRoutingEndpointGroupDestinationArgs].
  /// [endpointGroupId] The ID of the endpoint group.
  /// [fromPort] The start port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  /// [protocols] The backend service protocol of the endpoint group. Valid values: `TCP`, `UDP`, `TCP, UDP`.
  /// [toPort] The end port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  CustomRoutingEndpointGroupDestinationArgs({
    required this.endpointGroupId,
    required this.fromPort,
    required this.protocols,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointGroupId': endpointGroupId,
      'fromPort': fromPort,
      'protocols': protocols,
      'toPort': toPort,
    };
  }

  factory CustomRoutingEndpointGroupDestinationArgs.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointGroupDestinationArgs(
      endpointGroupId: (map['endpointGroupId'] as String).input(),
      fromPort: (map['fromPort'] as int).input(),
      protocols: ((map['protocols'] as List).cast<String>()).input(),
      toPort: (map['toPort'] as int).input(),
    );
  }
}

