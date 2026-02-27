// ignore_for_file: unused_element, unnecessary_cast

class GetLoadBalancerIpamPoolLb {
  final String ipv4IpamPoolId;

  GetLoadBalancerIpamPoolLb({
    required this.ipv4IpamPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipv4IpamPoolId'] = ipv4IpamPoolId;
    return map;
  }

  factory GetLoadBalancerIpamPoolLb.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerIpamPoolLb(
      ipv4IpamPoolId: map['ipv4IpamPoolId'] as String,
    );
  }
}
