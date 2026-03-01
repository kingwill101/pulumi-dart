// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_custom_routing_endpoint_custom_routing_endpoint_args_doc}
/// The set of arguments for CustomRoutingEndpoint.
/// {@endtemplate}
/// {@macro pulumi_ga_custom_routing_endpoint_custom_routing_endpoint_args_doc}
class CustomRoutingEndpointArgs {
  /// The ID of the endpoint (vSwitch).
  final pulumi.Input<String> endpoint;
  /// The ID of the endpoint group in which to create endpoints.
  final pulumi.Input<String> endpointGroupId;
  /// The access policy of traffic to the endpoint. Default value: `DenyAll`. Valid values:
  /// - `DenyAll`: denies all traffic to the endpoint.
  /// - `AllowAll`: allows all traffic to the endpoint.
  /// - `AllowCustom`: allows traffic only to specified destinations in the endpoint.
  final pulumi.Input<String>? trafficToEndpointPolicy;
  /// The backend service type of the endpoint. Valid values: `PrivateSubNet`.
  final pulumi.Input<String> type;

  /// Creates a new [CustomRoutingEndpointArgs].
  /// [endpoint] The ID of the endpoint (vSwitch).
  /// [endpointGroupId] The ID of the endpoint group in which to create endpoints.
  /// [trafficToEndpointPolicy] The access policy of traffic to the endpoint. Default value: `DenyAll`. Valid values:
  /// [type] The backend service type of the endpoint. Valid values: `PrivateSubNet`.
  CustomRoutingEndpointArgs({
    required String endpoint,
    required String endpointGroupId,
    String? trafficToEndpointPolicy,
    required String type,
  }) :
      endpoint = pulumi.Input.asInput<String>(endpoint),
      endpointGroupId = pulumi.Input.asInput<String>(endpointGroupId),
      trafficToEndpointPolicy = pulumi.Input.asOptionalInput<String>(trafficToEndpointPolicy),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'endpointGroupId': endpointGroupId,
      'trafficToEndpointPolicy': ?trafficToEndpointPolicy,
      'type': type,
    };
  }

  factory CustomRoutingEndpointArgs.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointArgs(
      endpoint: map['endpoint'] as String,
      endpointGroupId: map['endpointGroupId'] as String,
      trafficToEndpointPolicy: map['trafficToEndpointPolicy'] == null ? null : map['trafficToEndpointPolicy'] as String,
      type: map['type'] as String,
    );
  }
}

