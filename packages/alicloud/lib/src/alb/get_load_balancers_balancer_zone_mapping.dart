// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_balancer_zone_mapping_load_balancer_address.dart';

class GetLoadBalancersBalancerZoneMapping {
  /// (Available since v1.250.0) The address of the ALB instance.
  final List<GetLoadBalancersBalancerZoneMappingLoadBalancerAddress> loadBalancerAddresses;
  /// The load balancer status. Valid values: `Active`, `Configuring`, `CreateFailed`, `Inactive` and `Provisioning`.
  final String status;
  /// The ID of the vSwitch that corresponds to the zone.
  final String vswitchId;
  /// The zone ID of the resource.
  final String zoneId;

  /// Creates a new [GetLoadBalancersBalancerZoneMapping].
  /// [loadBalancerAddresses] (Available since v1.250.0) The address of the ALB instance.
  /// [status] The load balancer status. Valid values: `Active`, `Configuring`, `CreateFailed`, `Inactive` and `Provisioning`.
  /// [vswitchId] The ID of the vSwitch that corresponds to the zone.
  /// [zoneId] The zone ID of the resource.
  GetLoadBalancersBalancerZoneMapping({
    required this.loadBalancerAddresses,
    required this.status,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerAddresses': pulumi.Input.encodeList<GetLoadBalancersBalancerZoneMappingLoadBalancerAddress, Map<String, dynamic>>(loadBalancerAddresses, (value) => value.toMap()),
      'status': status,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetLoadBalancersBalancerZoneMapping.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerZoneMapping(
      loadBalancerAddresses: pulumi.Input.decodeList<GetLoadBalancersBalancerZoneMappingLoadBalancerAddress>(map['loadBalancerAddresses'], (value) => GetLoadBalancersBalancerZoneMappingLoadBalancerAddress.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

