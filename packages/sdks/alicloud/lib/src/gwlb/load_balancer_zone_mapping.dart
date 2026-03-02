// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_zone_mapping_load_balancer_address.dart';

class LoadBalancerZoneMapping {
  /// The information about the IP addresses used by the GWLB instance.
  final pulumi.Input<List<LoadBalancerZoneMappingLoadBalancerAddress>>? loadBalancerAddresses;
  /// The ID of the vSwitch in the zone. You can specify only one vSwitch (subnet) in each zone of a GWLB instance.
  final pulumi.Input<String> vswitchId;
  /// The zone ID. You can call the DescribeZones operation to query the most recent zone list.
  final pulumi.Input<String> zoneId;

  /// Creates a new [LoadBalancerZoneMapping].
  /// [loadBalancerAddresses] The information about the IP addresses used by the GWLB instance.
  /// [vswitchId] The ID of the vSwitch in the zone. You can specify only one vSwitch (subnet) in each zone of a GWLB instance.
  /// [zoneId] The zone ID. You can call the DescribeZones operation to query the most recent zone list.
  LoadBalancerZoneMapping({
    this.loadBalancerAddresses,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerAddresses': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerZoneMappingLoadBalancerAddress>, List<Map<String, dynamic>>>(loadBalancerAddresses, (value) => pulumi.Input.encodeList<LoadBalancerZoneMappingLoadBalancerAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory LoadBalancerZoneMapping.fromMap(Map<String, dynamic> map) {
    return LoadBalancerZoneMapping(
      loadBalancerAddresses: map['loadBalancerAddresses'] == null ? null : (pulumi.Input.decodeList<LoadBalancerZoneMappingLoadBalancerAddress>(map['loadBalancerAddresses']!, (value) => LoadBalancerZoneMappingLoadBalancerAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

