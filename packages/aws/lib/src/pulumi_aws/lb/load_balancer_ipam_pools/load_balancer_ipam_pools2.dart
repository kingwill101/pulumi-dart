// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerIpamPools2 {
  /// The ID of the IPv4 IPAM pool.
  final String ipv4IpamPoolId;

  LoadBalancerIpamPools2({
    required this.ipv4IpamPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipv4IpamPoolId'] = ipv4IpamPoolId;
    return map;
  }

  factory LoadBalancerIpamPools2.fromMap(Map<String, dynamic> map) {
    return LoadBalancerIpamPools2(
      ipv4IpamPoolId: map['ipv4IpamPoolId'] as String,
    );
  }
}
