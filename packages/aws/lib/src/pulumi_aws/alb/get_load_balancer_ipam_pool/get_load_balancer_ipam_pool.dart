// ignore_for_file: unused_element, unnecessary_cast

class GetLoadBalancerIpamPool {
  final String ipv4IpamPoolId;

  GetLoadBalancerIpamPool({
    required this.ipv4IpamPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipv4IpamPoolId'] = ipv4IpamPoolId;
    return map;
  }

  factory GetLoadBalancerIpamPool.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerIpamPool(
      ipv4IpamPoolId: map['ipv4IpamPoolId'] as String,
    );
  }
}
