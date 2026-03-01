// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_endpoint_traffic_policies_custom_routing_endpoint_traffic_policy_port_range.dart';

class GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy {
  /// The ID of the GA instance to which the traffic policies belong.
  final String acceleratorId;
  /// The IP addresses of the traffic policies.
  final String address;
  /// The ID of the Custom Routing Endpoint Traffic Policy.
  final String customRoutingEndpointTrafficPolicyId;
  /// The ID of the endpoint group to which the traffic policies belong.
  final String endpointGroupId;
  /// The ID of the endpoint to which the traffic policies belong.
  final String endpointId;
  /// The id of the Global Accelerator Custom Routing Endpoint Traffic Policy. It formats as `<endpoint_id>:<custom_routing_endpoint_traffic_policy_id>`.
  final String id;
  /// The ID of the listener to which the traffic policies belong.
  final String listenerId;
  /// The port range of the traffic policy.
  final List<GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange> portRanges;

  /// Creates a new [GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy].
  /// [acceleratorId] The ID of the GA instance to which the traffic policies belong.
  /// [address] The IP addresses of the traffic policies.
  /// [customRoutingEndpointTrafficPolicyId] The ID of the Custom Routing Endpoint Traffic Policy.
  /// [endpointGroupId] The ID of the endpoint group to which the traffic policies belong.
  /// [endpointId] The ID of the endpoint to which the traffic policies belong.
  /// [id] The id of the Global Accelerator Custom Routing Endpoint Traffic Policy. It formats as `<endpoint_id>:<custom_routing_endpoint_traffic_policy_id>`.
  /// [listenerId] The ID of the listener to which the traffic policies belong.
  /// [portRanges] The port range of the traffic policy.
  GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy({
    required this.acceleratorId,
    required this.address,
    required this.customRoutingEndpointTrafficPolicyId,
    required this.endpointGroupId,
    required this.endpointId,
    required this.id,
    required this.listenerId,
    required this.portRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'address': address,
      'customRoutingEndpointTrafficPolicyId': customRoutingEndpointTrafficPolicyId,
      'endpointGroupId': endpointGroupId,
      'endpointId': endpointId,
      'id': id,
      'listenerId': listenerId,
      'portRanges': pulumi.Input.encodeList<GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange, Map<String, dynamic>>(portRanges, (value) => value.toMap()),
    };
  }

  factory GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy(
      acceleratorId: map['acceleratorId'] as String,
      address: map['address'] as String,
      customRoutingEndpointTrafficPolicyId: map['customRoutingEndpointTrafficPolicyId'] as String,
      endpointGroupId: map['endpointGroupId'] as String,
      endpointId: map['endpointId'] as String,
      id: map['id'] as String,
      listenerId: map['listenerId'] as String,
      portRanges: pulumi.Input.decodeList<GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange>(map['portRanges'], (value) => GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

