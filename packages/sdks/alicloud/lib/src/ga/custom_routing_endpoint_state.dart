// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomRoutingEndpoint resources.
class CustomRoutingEndpointState {
  /// The ID of the GA instance with which the endpoint is associated.
  final pulumi.Input<String>? acceleratorId;
  /// The ID of the Custom Routing Endpoint.
  final pulumi.Input<String>? customRoutingEndpointId;
  /// The ID of the endpoint (vSwitch).
  final pulumi.Input<String>? endpoint;
  /// The ID of the endpoint group in which to create endpoints.
  final pulumi.Input<String>? endpointGroupId;
  /// The ID of the listener with which the endpoint is associated.
  final pulumi.Input<String>? listenerId;
  /// The status of the Custom Routing Endpoint.
  final pulumi.Input<String>? status;
  /// The access policy of traffic to the endpoint. Default value: `DenyAll`. Valid values:
  /// - `DenyAll`: denies all traffic to the endpoint.
  /// - `AllowAll`: allows all traffic to the endpoint.
  /// - `AllowCustom`: allows traffic only to specified destinations in the endpoint.
  final pulumi.Input<String>? trafficToEndpointPolicy;
  /// The backend service type of the endpoint. Valid values: `PrivateSubNet`.
  final pulumi.Input<String>? type;

  /// Creates a new [CustomRoutingEndpointState].
  /// [acceleratorId] The ID of the GA instance with which the endpoint is associated.
  /// [customRoutingEndpointId] The ID of the Custom Routing Endpoint.
  /// [endpoint] The ID of the endpoint (vSwitch).
  /// [endpointGroupId] The ID of the endpoint group in which to create endpoints.
  /// [listenerId] The ID of the listener with which the endpoint is associated.
  /// [status] The status of the Custom Routing Endpoint.
  /// [trafficToEndpointPolicy] The access policy of traffic to the endpoint. Default value: `DenyAll`. Valid values:
  /// [type] The backend service type of the endpoint. Valid values: `PrivateSubNet`.
  CustomRoutingEndpointState({
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? customRoutingEndpointId,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? endpointGroupId,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? trafficToEndpointPolicy,
    pulumi.Output<String>? type,
  }) :
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      customRoutingEndpointId = pulumi.Input.asOptionalInput<String>(customRoutingEndpointId),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      endpointGroupId = pulumi.Input.asOptionalInput<String>(endpointGroupId),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      status = pulumi.Input.asOptionalInput<String>(status),
      trafficToEndpointPolicy = pulumi.Input.asOptionalInput<String>(trafficToEndpointPolicy),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'customRoutingEndpointId': ?customRoutingEndpointId,
      'endpoint': ?endpoint,
      'endpointGroupId': ?endpointGroupId,
      'listenerId': ?listenerId,
      'status': ?status,
      'trafficToEndpointPolicy': ?trafficToEndpointPolicy,
      'type': ?type,
    };
  }

  factory CustomRoutingEndpointState.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointState(
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      customRoutingEndpointId: map['customRoutingEndpointId'] == null ? null : pulumi.Output.create<String>(map['customRoutingEndpointId'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      endpointGroupId: map['endpointGroupId'] == null ? null : pulumi.Output.create<String>(map['endpointGroupId'] as String),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      trafficToEndpointPolicy: map['trafficToEndpointPolicy'] == null ? null : pulumi.Output.create<String>(map['trafficToEndpointPolicy'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

