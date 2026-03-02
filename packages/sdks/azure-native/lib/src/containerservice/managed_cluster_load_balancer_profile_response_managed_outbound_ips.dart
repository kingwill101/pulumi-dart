// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Desired managed outbound IPs for the cluster load balancer.
class ManagedClusterLoadBalancerProfileResponseManagedOutboundIPs {
  /// The desired number of IPv4 outbound IPs created/managed by Azure for the cluster load balancer. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  final pulumi.Input<int>? count;
  /// The desired number of IPv6 outbound IPs created/managed by Azure for the cluster load balancer. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 0 for single-stack and 1 for dual-stack.
  final pulumi.Input<int>? countIPv6;

  /// Creates a new [ManagedClusterLoadBalancerProfileResponseManagedOutboundIPs].
  /// [count] The desired number of IPv4 outbound IPs created/managed by Azure for the cluster load balancer. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  /// [countIPv6] The desired number of IPv6 outbound IPs created/managed by Azure for the cluster load balancer. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 0 for single-stack and 1 for dual-stack.
  ManagedClusterLoadBalancerProfileResponseManagedOutboundIPs({
    this.count,
    this.countIPv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'countIPv6': ?countIPv6,
    };
  }

  factory ManagedClusterLoadBalancerProfileResponseManagedOutboundIPs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLoadBalancerProfileResponseManagedOutboundIPs(
      count: map['count'] == null ? null : (map['count'] as int).input(),
      countIPv6: map['countIPv6'] == null ? null : (map['countIPv6'] as int).input(),
    );
  }
}

