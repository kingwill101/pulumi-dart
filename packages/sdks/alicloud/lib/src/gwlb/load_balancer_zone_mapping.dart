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
      loadBalancerAddresses: (() { final guardedValue = map['loadBalancerAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerZoneMappingLoadBalancerAddress>(guardedValue, (value) => LoadBalancerZoneMappingLoadBalancerAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

