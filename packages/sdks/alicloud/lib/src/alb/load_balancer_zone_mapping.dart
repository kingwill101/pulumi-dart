// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_zone_mapping_load_balancer_address.dart';

class LoadBalancerZoneMapping {
  /// An IP address of the IPv4 type.
  final pulumi.Input<String>? address;

  /// The ID of the EIP instance.
  final pulumi.Input<String>? allocationId;

  /// The type of the EIP instance.
  final pulumi.Input<String>? eipType;

  /// IPv4 private network address.
  final pulumi.Input<String>? intranetAddress;

  /// An IP address of the IPv6 type.
  final pulumi.Input<String>? ipv6Address;

  /// The instance address.
  final pulumi.Input<List<LoadBalancerZoneMappingLoadBalancerAddress>>?
  loadBalancerAddresses;

  /// The ID of the vSwitch that corresponds to the zone. Each zone can use only one vSwitch and subnet.
  final pulumi.Input<String> vswitchId;

  /// The ID of the zone to which the SLB instance belongs.
  final pulumi.Input<String> zoneId;

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
      'loadBalancerAddresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<LoadBalancerZoneMappingLoadBalancerAddress>,
            List<Map<String, dynamic>>
          >(
            loadBalancerAddresses,
            (value) =>
                pulumi.Input.encodeList<
                  LoadBalancerZoneMappingLoadBalancerAddress,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory LoadBalancerZoneMapping.fromMap(Map<String, dynamic> map) {
    return LoadBalancerZoneMapping(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      allocationId: (() {
        final guardedValue = map['allocationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eipType: (() {
        final guardedValue = map['eipType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      intranetAddress: (() {
        final guardedValue = map['intranetAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6Address: (() {
        final guardedValue = map['ipv6Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerAddresses: (() {
        final guardedValue = map['loadBalancerAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LoadBalancerZoneMappingLoadBalancerAddress>(
            guardedValue,
            (value) => LoadBalancerZoneMappingLoadBalancerAddress.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
