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
    this.acceleratorId,
    this.address,
    this.customRoutingEndpointTrafficPolicyId,
    this.endpointGroupId,
    this.endpointId,
    this.listenerId,
    this.portRanges,
    this.status,
  });

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
      acceleratorId: map['acceleratorId'] == null ? null : (map['acceleratorId']! as String).input(),
      address: map['address'] == null ? null : (map['address']! as String).input(),
      customRoutingEndpointTrafficPolicyId: map['customRoutingEndpointTrafficPolicyId'] == null ? null : (map['customRoutingEndpointTrafficPolicyId']! as String).input(),
      endpointGroupId: map['endpointGroupId'] == null ? null : (map['endpointGroupId']! as String).input(),
      endpointId: map['endpointId'] == null ? null : (map['endpointId']! as String).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId']! as String).input(),
      portRanges: map['portRanges'] == null ? null : (pulumi.Input.decodeList<CustomRoutingEndpointTrafficPolicyPortRange>(map['portRanges']!, (value) => CustomRoutingEndpointTrafficPolicyPortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

