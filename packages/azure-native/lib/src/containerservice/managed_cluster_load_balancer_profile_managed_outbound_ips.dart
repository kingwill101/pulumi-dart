// ignore_for_file: unused_element, unnecessary_cast


/// Desired managed outbound IPs for the cluster load balancer.
class ManagedClusterLoadBalancerProfileManagedOutboundIPs {
  /// The desired number of IPv4 outbound IPs created/managed by Azure for the cluster load balancer. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  final int? count;
  /// The desired number of IPv6 outbound IPs created/managed by Azure for the cluster load balancer. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 0 for single-stack and 1 for dual-stack.
  final int? countIPv6;

  /// Creates a new [ManagedClusterLoadBalancerProfileManagedOutboundIPs].
  /// [count] The desired number of IPv4 outbound IPs created/managed by Azure for the cluster load balancer. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  /// [countIPv6] The desired number of IPv6 outbound IPs created/managed by Azure for the cluster load balancer. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 0 for single-stack and 1 for dual-stack.
  ManagedClusterLoadBalancerProfileManagedOutboundIPs({
    this.count,
    this.countIPv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'countIPv6': ?countIPv6,
    };
  }

  factory ManagedClusterLoadBalancerProfileManagedOutboundIPs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLoadBalancerProfileManagedOutboundIPs(
      count: map['count'] == null ? null : map['count'] as int,
      countIPv6: map['countIPv6'] == null ? null : map['countIPv6'] as int,
    );
  }
}

