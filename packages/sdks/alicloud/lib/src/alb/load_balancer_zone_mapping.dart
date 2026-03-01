// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_zone_mapping_load_balancer_address.dart';

class LoadBalancerZoneMapping {
  /// An IP address of the IPv4 type.
  final String? address;
  /// The ID of the EIP instance.
  final String? allocationId;
  /// The type of the EIP instance.
  final String? eipType;
  /// IPv4 private network address.
  final String? intranetAddress;
  /// An IP address of the IPv6 type.
  final String? ipv6Address;
  /// The instance address.
  final List<LoadBalancerZoneMappingLoadBalancerAddress>? loadBalancerAddresses;
  /// The ID of the vSwitch that corresponds to the zone. Each zone can use only one vSwitch and subnet.
  final String vswitchId;
  /// The ID of the zone to which the SLB instance belongs.
  final String zoneId;

  /// Creates a new [LoadBalancerZoneMapping].
  /// [address] An IP address of the IPv4 type.
  /// [allocationId] The ID of the EIP instance.
  /// [eipType] The type of the EIP instance.
  /// [intranetAddress] IPv4 private network address.
  /// [ipv6Address] An IP address of the IPv6 type.
  /// [loadBalancerAddresses] The instance address.
  /// [vswitchId] The ID of the vSwitch that corresponds to the zone. Each zone can use only one vSwitch and subnet.
  /// [zoneId] The ID of the zone to which the SLB instance belongs.
  LoadBalancerZoneMapping({
    this.address,
    this.allocationId,
    this.eipType,
    this.intranetAddress,
    this.ipv6Address,
    this.loadBalancerAddresses,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'allocationId': ?allocationId,
      'eipType': ?eipType,
      'intranetAddress': ?intranetAddress,
      'ipv6Address': ?ipv6Address,
      'loadBalancerAddresses': ?loadBalancerAddresses == null ? null : pulumi.Input.encodeList<LoadBalancerZoneMappingLoadBalancerAddress, Map<String, dynamic>>(loadBalancerAddresses!, (value) => value.toMap()),
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory LoadBalancerZoneMapping.fromMap(Map<String, dynamic> map) {
    return LoadBalancerZoneMapping(
      address: map['address'] == null ? null : map['address'] as String,
      allocationId: map['allocationId'] == null ? null : map['allocationId'] as String,
      eipType: map['eipType'] == null ? null : map['eipType'] as String,
      intranetAddress: map['intranetAddress'] == null ? null : map['intranetAddress'] as String,
      ipv6Address: map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      loadBalancerAddresses: map['loadBalancerAddresses'] == null ? null : pulumi.Input.decodeList<LoadBalancerZoneMappingLoadBalancerAddress>(map['loadBalancerAddresses'], (value) => LoadBalancerZoneMappingLoadBalancerAddress.fromMap((value as Map).cast<String, dynamic>())),
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

