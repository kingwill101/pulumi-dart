// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_zone_mapping.dart';

/// Input properties used for looking up and filtering LoadBalancer resources.
class LoadBalancerState {
  /// The IP version. Valid values:
  ///
  /// - `Ipv4`: IPv4 (default)
  final pulumi.Input<String>? addressIpVersion;
  /// The time when the resource was created. The time follows the ISO 8601 standard in the **yyyy-MM-ddTHH:mm:ssZ** format. The time is displayed in UTC.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to perform a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The GWLB instance name.
  ///
  /// The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String>? loadBalancerName;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The GWLB instance status.
  final pulumi.Input<String>? status;
  /// The tag keys. You can specify at most 20 tags in each call.
  final pulumi.Input<Map<String, String>>? tags;
  /// The virtual private cloud (VPC) ID.
  final pulumi.Input<String>? vpcId;
  /// The mappings between zones and vSwitches. You must specify at least one zone. You can specify at most 20 zones. If the region supports two or more zones, we recommend that you select two or more zones. See `zone_mappings` below.
  final pulumi.Input<List<LoadBalancerZoneMapping>>? zoneMappings;

  /// Creates a new [LoadBalancerState].
  /// [addressIpVersion] The IP version. Valid values:
  /// [createTime] The time when the resource was created. The time follows the ISO 8601 standard in the **yyyy-MM-ddTHH:mm:ssZ** format. The time is displayed in UTC.
  /// [dryRun] Specifies whether to perform a dry run, without performing the actual request. Valid values:
  /// [loadBalancerName] The GWLB instance name.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The GWLB instance status.
  /// [tags] The tag keys. You can specify at most 20 tags in each call.
  /// [vpcId] The virtual private cloud (VPC) ID.
  /// [zoneMappings] The mappings between zones and vSwitches. You must specify at least one zone. You can specify at most 20 zones. If the region supports two or more zones, we recommend that you select two or more zones. See `zone_mappings` below.
  LoadBalancerState({
    this.addressIpVersion,
    this.createTime,
    this.dryRun,
    this.loadBalancerName,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vpcId,
    this.zoneMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': ?addressIpVersion,
      'createTime': ?createTime,
      'dryRun': ?dryRun,
      'loadBalancerName': ?loadBalancerName,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'zoneMappings': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerZoneMapping>, List<Map<String, dynamic>>>(zoneMappings, (value) => pulumi.Input.encodeList<LoadBalancerZoneMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerState(
      addressIpVersion: map['addressIpVersion'] == null ? null : (map['addressIpVersion']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      loadBalancerName: map['loadBalancerName'] == null ? null : (map['loadBalancerName']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      zoneMappings: map['zoneMappings'] == null ? null : (pulumi.Input.decodeList<LoadBalancerZoneMapping>(map['zoneMappings']!, (value) => LoadBalancerZoneMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

