// ignore_for_file: unused_element, unnecessary_cast

class GetLoadBalancerSubnetMapping2 {
  final String allocationId;
  final String ipv6Address;
  final String outpostId;
  final String privateIpv4Address;
  final String subnetId;

  GetLoadBalancerSubnetMapping2({
    required this.allocationId,
    required this.ipv6Address,
    required this.outpostId,
    required this.privateIpv4Address,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocationId'] = allocationId;
    map['ipv6Address'] = ipv6Address;
    map['outpostId'] = outpostId;
    map['privateIpv4Address'] = privateIpv4Address;
    map['subnetId'] = subnetId;
    return map;
  }

  factory GetLoadBalancerSubnetMapping2.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerSubnetMapping2(
      allocationId: map['allocationId'] as String,
      ipv6Address: map['ipv6Address'] as String,
      outpostId: map['outpostId'] as String,
      privateIpv4Address: map['privateIpv4Address'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}
