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
    required this.endpoint,
    required this.endpointGroupId,
    this.trafficToEndpointPolicy,
    required this.type,
  });

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
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      endpointGroupId: pulumi.Input.fromValue(map['endpointGroupId'] as String),
      trafficToEndpointPolicy: (() { final guardedValue = map['trafficToEndpointPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

