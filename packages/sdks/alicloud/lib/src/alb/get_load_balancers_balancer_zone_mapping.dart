// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_balancer_zone_mapping_load_balancer_address.dart';

class GetLoadBalancersBalancerZoneMapping {
  /// (Available since v1.250.0) The address of the ALB instance.
  final pulumi.Input<List<GetLoadBalancersBalancerZoneMappingLoadBalancerAddress>> loadBalancerAddresses;
  /// The load balancer status. Valid values: `Active`, `Configuring`, `CreateFailed`, `Inactive` and `Provisioning`.
  final pulumi.Input<String> status;
  /// The ID of the vSwitch that corresponds to the zone.
  final pulumi.Input<String> vswitchId;
  /// The zone ID of the resource.
  final pulumi.Input<String> zoneId;

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
      'loadBalancerAddresses': pulumi.Input.mapInputValue<List<GetLoadBalancersBalancerZoneMappingLoadBalancerAddress>, List<Map<String, dynamic>>>(loadBalancerAddresses, (value) => pulumi.Input.encodeList<GetLoadBalancersBalancerZoneMappingLoadBalancerAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetLoadBalancersBalancerZoneMapping.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerZoneMapping(
      loadBalancerAddresses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLoadBalancersBalancerZoneMappingLoadBalancerAddress>(map['loadBalancerAddresses']!, (value) => GetLoadBalancersBalancerZoneMappingLoadBalancerAddress.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

