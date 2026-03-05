// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_endpoint_traffic_policies_custom_routing_endpoint_traffic_policy_port_range.dart';

class GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy {
  /// The ID of the GA instance to which the traffic policies belong.
  final pulumi.Input<String> acceleratorId;
  /// The IP addresses of the traffic policies.
  final pulumi.Input<String> address;
  /// The ID of the Custom Routing Endpoint Traffic Policy.
  final pulumi.Input<String> customRoutingEndpointTrafficPolicyId;
  /// The ID of the endpoint group to which the traffic policies belong.
  final pulumi.Input<String> endpointGroupId;
  /// The ID of the endpoint to which the traffic policies belong.
  final pulumi.Input<String> endpointId;
  /// The id of the Global Accelerator Custom Routing Endpoint Traffic Policy. It formats as `&lt;endpoint_id&gt;:&lt;custom_routing_endpoint_traffic_policy_id&gt;`.
  final pulumi.Input<String> id;
  /// The ID of the listener to which the traffic policies belong.
  final pulumi.Input<String> listenerId;
  /// The port range of the traffic policy.
  final pulumi.Input<List<GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange>> portRanges;

  /// Creates a new [GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy].
  /// [acceleratorId] The ID of the GA instance to which the traffic policies belong.
  /// [address] The IP addresses of the traffic policies.
  /// [customRoutingEndpointTrafficPolicyId] The ID of the Custom Routing Endpoint Traffic Policy.
  /// [endpointGroupId] The ID of the endpoint group to which the traffic policies belong.
  /// [endpointId] The ID of the endpoint to which the traffic policies belong.
  /// [id] The id of the Global Accelerator Custom Routing Endpoint Traffic Policy. It formats as `&lt;endpoint_id&gt;:&lt;custom_routing_endpoint_traffic_policy_id&gt;`.
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
      'portRanges': pulumi.Input.mapInputValue<List<GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      address: pulumi.Input.fromValue(map['address'] as String),
      customRoutingEndpointTrafficPolicyId: pulumi.Input.fromValue(map['customRoutingEndpointTrafficPolicyId'] as String),
      endpointGroupId: pulumi.Input.fromValue(map['endpointGroupId'] as String),
      endpointId: pulumi.Input.fromValue(map['endpointId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      portRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange>(map['portRanges']!, (value) => GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

