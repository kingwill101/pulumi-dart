// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerIpamPools {
  /// The ID of the IPv4 IPAM pool.
  final String ipv4IpamPoolId;

  LoadBalancerIpamPools({
    required this.ipv4IpamPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipv4IpamPoolId'] = ipv4IpamPoolId;
    return map;
  }

  factory LoadBalancerIpamPools.fromMap(Map<String, dynamic> map) {
    return LoadBalancerIpamPools(
      ipv4IpamPoolId: map['ipv4IpamPoolId'] as String,
    );
  }
}
