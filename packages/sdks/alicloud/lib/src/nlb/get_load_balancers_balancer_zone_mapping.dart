// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersBalancerZoneMapping {
  /// The ID of the elastic IP address (EIP).
  final String allocationId;
  /// The ID of the elastic network interface (ENI) attached to the NLB instance.
  final String eniId;
  /// The IPv6 address of the NLB instance.
  final String ipv6Address;
  /// The private IPv4 address used by the NLB instance.
  final String privateIpv4Address;
  /// The public IPv4 address used by the NLB instance.
  final String publicIpv4Address;
  /// The ID of the vSwitch. By default, you can specify one vSwitch (subnet) in each zone of the NLB instance.
  final String vswitchId;
  /// The name of the zone.
  final String zoneId;

  /// Creates a new [GetLoadBalancersBalancerZoneMapping].
  /// [allocationId] The ID of the elastic IP address (EIP).
  /// [eniId] The ID of the elastic network interface (ENI) attached to the NLB instance.
  /// [ipv6Address] The IPv6 address of the NLB instance.
  /// [privateIpv4Address] The private IPv4 address used by the NLB instance.
  /// [publicIpv4Address] The public IPv4 address used by the NLB instance.
  /// [vswitchId] The ID of the vSwitch. By default, you can specify one vSwitch (subnet) in each zone of the NLB instance.
  /// [zoneId] The name of the zone.
  GetLoadBalancersBalancerZoneMapping({
    required this.allocationId,
    required this.eniId,
    required this.ipv6Address,
    required this.privateIpv4Address,
    required this.publicIpv4Address,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': allocationId,
      'eniId': eniId,
      'ipv6Address': ipv6Address,
      'privateIpv4Address': privateIpv4Address,
      'publicIpv4Address': publicIpv4Address,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetLoadBalancersBalancerZoneMapping.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerZoneMapping(
      allocationId: map['allocationId'] as String,
      eniId: map['eniId'] as String,
      ipv6Address: map['ipv6Address'] as String,
      privateIpv4Address: map['privateIpv4Address'] as String,
      publicIpv4Address: map['publicIpv4Address'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

