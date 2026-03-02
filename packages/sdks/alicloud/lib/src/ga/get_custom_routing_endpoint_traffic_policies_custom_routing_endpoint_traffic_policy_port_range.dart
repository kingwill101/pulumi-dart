// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange {
  /// The first port of the port range.
  final pulumi.Input<int> fromPort;
  /// The last port of the port range.
  final pulumi.Input<int> toPort;

  /// Creates a new [GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange].
  /// [fromPort] The first port of the port range.
  /// [toPort] The last port of the port range.
  GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicyPortRange(
      fromPort: (map['fromPort'] as int).input(),
      toPort: (map['toPort'] as int).input(),
    );
  }
}

