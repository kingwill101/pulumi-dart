// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_endpoint_traffic_policy_port_range.dart';

/// Input properties used for looking up and filtering CustomRoutingEndpointTrafficPolicy resources.
class CustomRoutingEndpointTrafficPolicyState {
  /// The ID of the GA instance.
  final pulumi.Input<String>? acceleratorId;
  /// The IP address of the destination to which traffic is allowed.
  final pulumi.Input<String>? address;
  /// The ID of the Custom Routing Endpoint Traffic Policy.
  final pulumi.Input<String>? customRoutingEndpointTrafficPolicyId;
  /// The ID of the endpoint group.
  final pulumi.Input<String>? endpointGroupId;
  /// The ID of the Custom Routing Endpoint.
  final pulumi.Input<String>? endpointId;
  /// The ID of the listener.
  final pulumi.Input<String>? listenerId;
  /// Port rangeSee the following. See `port_ranges` below.
  final pulumi.Input<List<CustomRoutingEndpointTrafficPolicyPortRange>>? portRanges;
  /// The status of the Custom Routing Endpoint Traffic Policy.
  final pulumi.Input<String>? status;

  /// Creates a new [CustomRoutingEndpointTrafficPolicyState].
  /// [acceleratorId] The ID of the GA instance.
  /// [address] The IP address of the destination to which traffic is allowed.
  /// [customRoutingEndpointTrafficPolicyId] The ID of the Custom Routing Endpoint Traffic Policy.
  /// [endpointGroupId] The ID of the endpoint group.
  /// [endpointId] The ID of the Custom Routing Endpoint.
  /// [listenerId] The ID of the listener.
  /// [portRanges] Port rangeSee the following. See `port_ranges` below.
  /// [status] The status of the Custom Routing Endpoint Traffic Policy.
  CustomRoutingEndpointTrafficPolicyState({
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? address,
    pulumi.Output<String>? customRoutingEndpointTrafficPolicyId,
    pulumi.Output<String>? endpointGroupId,
    pulumi.Output<String>? endpointId,
    pulumi.Output<String>? listenerId,
    pulumi.Output<List<CustomRoutingEndpointTrafficPolicyPortRange>>? portRanges,
    pulumi.Output<String>? status,
  }) :
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      address = pulumi.Input.asOptionalInput<String>(address),
      customRoutingEndpointTrafficPolicyId = pulumi.Input.asOptionalInput<String>(customRoutingEndpointTrafficPolicyId),
      endpointGroupId = pulumi.Input.asOptionalInput<String>(endpointGroupId),
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      portRanges = pulumi.Input.asOptionalInput<List<CustomRoutingEndpointTrafficPolicyPortRange>>(portRanges),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'address': ?address,
      'customRoutingEndpointTrafficPolicyId': ?customRoutingEndpointTrafficPolicyId,
      'endpointGroupId': ?endpointGroupId,
      'endpointId': ?endpointId,
      'listenerId': ?listenerId,
      'portRanges': ?pulumi.Input.mapOptionalInputValue<List<CustomRoutingEndpointTrafficPolicyPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<CustomRoutingEndpointTrafficPolicyPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory CustomRoutingEndpointTrafficPolicyState.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointTrafficPolicyState(
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      customRoutingEndpointTrafficPolicyId: map['customRoutingEndpointTrafficPolicyId'] == null ? null : pulumi.Output.create<String>(map['customRoutingEndpointTrafficPolicyId'] as String),
      endpointGroupId: map['endpointGroupId'] == null ? null : pulumi.Output.create<String>(map['endpointGroupId'] as String),
      endpointId: map['endpointId'] == null ? null : pulumi.Output.create<String>(map['endpointId'] as String),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      portRanges: map['portRanges'] == null ? null : pulumi.Output.create<List<CustomRoutingEndpointTrafficPolicyPortRange>>(pulumi.Input.decodeList<CustomRoutingEndpointTrafficPolicyPortRange>(map['portRanges'], (value) => CustomRoutingEndpointTrafficPolicyPortRange.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

