// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersBalancerZoneMapping {
  /// The ID of the elastic IP address (EIP).
  final pulumi.Input<String> allocationId;
  /// The ID of the elastic network interface (ENI) attached to the NLB instance.
  final pulumi.Input<String> eniId;
  /// The IPv6 address of the NLB instance.
  final pulumi.Input<String> ipv6Address;
  /// The private IPv4 address used by the NLB instance.
  final pulumi.Input<String> privateIpv4Address;
  /// The public IPv4 address used by the NLB instance.
  final pulumi.Input<String> publicIpv4Address;
  /// The ID of the vSwitch. By default, you can specify one vSwitch (subnet) in each zone of the NLB instance.
  final pulumi.Input<String> vswitchId;
  /// The name of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetLoadBalancersBalancerZoneMapping].
  /// [allocationId] The ID of the elastic IP address (EIP).
  /// [eniId] The ID of the elastic network interface (ENI) attached to the NLB instance.
  /// [ipv6Address] The IPv6 address of the NLB instance.
  /// [privateIpv4Address] The private IPv4 address used by the NLB instance.
  /// [publicIpv4Address] The public IPv4 address used by the NLB instance.
  /// [vswitchId] The ID of the vSwitch. By default, you can specify one vSwitch (subnet) in each zone of the NLB instance.
  /// [zoneId] The name of the zone.
  const GetLoadBalancersBalancerZoneMapping({
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
      allocationId: pulumi.Input.fromValue(map['allocationId'] as String),
      eniId: pulumi.Input.fromValue(map['eniId'] as String),
      ipv6Address: pulumi.Input.fromValue(map['ipv6Address'] as String),
      privateIpv4Address: pulumi.Input.fromValue(map['privateIpv4Address'] as String),
      publicIpv4Address: pulumi.Input.fromValue(map['publicIpv4Address'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

