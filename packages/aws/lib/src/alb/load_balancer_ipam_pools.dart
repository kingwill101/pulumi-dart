// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerIpamPools {
  /// The ID of the IPv4 IPAM pool.
  final String ipv4IpamPoolId;

  /// Creates a new [LoadBalancerIpamPools].
  /// [ipv4IpamPoolId] The ID of the IPv4 IPAM pool.
  LoadBalancerIpamPools({required this.ipv4IpamPoolId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipv4IpamPoolId': ipv4IpamPoolId};
  }

  factory LoadBalancerIpamPools.fromMap(Map<String, dynamic> map) {
    return LoadBalancerIpamPools(
      ipv4IpamPoolId: map['ipv4IpamPoolId'] as String,
    );
  }
}
