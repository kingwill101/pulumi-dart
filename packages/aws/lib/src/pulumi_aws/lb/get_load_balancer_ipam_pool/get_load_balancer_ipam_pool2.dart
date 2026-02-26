// ignore_for_file: unused_element, unnecessary_cast

class GetLoadBalancerIpamPool2 {
  final String ipv4IpamPoolId;

  GetLoadBalancerIpamPool2({
    required this.ipv4IpamPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipv4IpamPoolId'] = ipv4IpamPoolId;
    return map;
  }

  factory GetLoadBalancerIpamPool2.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerIpamPool2(
      ipv4IpamPoolId: map['ipv4IpamPoolId'] as String,
    );
  }
}
