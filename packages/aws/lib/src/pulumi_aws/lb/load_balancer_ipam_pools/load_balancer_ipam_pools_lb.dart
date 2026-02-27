// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerIpamPoolsLb {
  /// The ID of the IPv4 IPAM pool.
  final String ipv4IpamPoolId;

  LoadBalancerIpamPoolsLb({
    required this.ipv4IpamPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipv4IpamPoolId'] = ipv4IpamPoolId;
    return map;
  }

  factory LoadBalancerIpamPoolsLb.fromMap(Map<String, dynamic> map) {
    return LoadBalancerIpamPoolsLb(
      ipv4IpamPoolId: map['ipv4IpamPoolId'] as String,
    );
  }
}
