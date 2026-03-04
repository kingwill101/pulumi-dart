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
    this.acceleratorId,
    this.customRoutingEndpointId,
    this.endpoint,
    this.endpointGroupId,
    this.listenerId,
    this.status,
    this.trafficToEndpointPolicy,
    this.type,
  });

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
      acceleratorId: (() {
        final guardedValue = map['acceleratorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customRoutingEndpointId: (() {
        final guardedValue = map['customRoutingEndpointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointGroupId: (() {
        final guardedValue = map['endpointGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      listenerId: (() {
        final guardedValue = map['listenerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficToEndpointPolicy: (() {
        final guardedValue = map['trafficToEndpointPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
