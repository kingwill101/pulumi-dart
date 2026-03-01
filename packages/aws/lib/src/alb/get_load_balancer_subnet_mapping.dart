// ignore_for_file: unused_element, unnecessary_cast

class GetLoadBalancerSubnetMapping {
  final String allocationId;
  final String ipv6Address;
  final String outpostId;
  final String privateIpv4Address;
  final String subnetId;

  /// Creates a new [GetLoadBalancerSubnetMapping].
  /// [allocationId] Required.
  /// [ipv6Address] Required.
  /// [outpostId] Required.
  /// [privateIpv4Address] Required.
  /// [subnetId] Required.
  GetLoadBalancerSubnetMapping({
    required this.allocationId,
    required this.ipv6Address,
    required this.outpostId,
    required this.privateIpv4Address,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': allocationId,
      'ipv6Address': ipv6Address,
      'outpostId': outpostId,
      'privateIpv4Address': privateIpv4Address,
      'subnetId': subnetId,
    };
  }

  factory GetLoadBalancerSubnetMapping.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerSubnetMapping(
      allocationId: map['allocationId'] as String,
      ipv6Address: map['ipv6Address'] as String,
      outpostId: map['outpostId'] as String,
      privateIpv4Address: map['privateIpv4Address'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}
