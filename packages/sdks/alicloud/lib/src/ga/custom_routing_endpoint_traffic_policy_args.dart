// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_endpoint_traffic_policy_port_range.dart';

/// {@template pulumi_ga_custom_routing_endpoint_traffic_policy_custom_routing_endpoint_traffic_policy_args_doc}
/// The set of arguments for CustomRoutingEndpointTrafficPolicy.
/// {@endtemplate}
/// {@macro pulumi_ga_custom_routing_endpoint_traffic_policy_custom_routing_endpoint_traffic_policy_args_doc}
class CustomRoutingEndpointTrafficPolicyArgs {
  /// The IP address of the destination to which traffic is allowed.
  final pulumi.Input<String> address;
  /// The ID of the Custom Routing Endpoint.
  final pulumi.Input<String> endpointId;
  /// Port rangeSee the following. See `port_ranges` below.
  final pulumi.Input<List<CustomRoutingEndpointTrafficPolicyPortRange>>? portRanges;

  /// Creates a new [CustomRoutingEndpointTrafficPolicyArgs].
  /// [address] The IP address of the destination to which traffic is allowed.
  /// [endpointId] The ID of the Custom Routing Endpoint.
  /// [portRanges] Port rangeSee the following. See `port_ranges` below.
  CustomRoutingEndpointTrafficPolicyArgs({
    required this.address,
    required this.endpointId,
    this.portRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'endpointId': endpointId,
      'portRanges': ?pulumi.Input.mapOptionalInputValue<List<CustomRoutingEndpointTrafficPolicyPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<CustomRoutingEndpointTrafficPolicyPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomRoutingEndpointTrafficPolicyArgs.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointTrafficPolicyArgs(
      address: (map['address'] as String).input(),
      endpointId: (map['endpointId'] as String).input(),
      portRanges: map['portRanges'] == null ? null : (pulumi.Input.decodeList<CustomRoutingEndpointTrafficPolicyPortRange>(map['portRanges']!, (value) => CustomRoutingEndpointTrafficPolicyPortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

