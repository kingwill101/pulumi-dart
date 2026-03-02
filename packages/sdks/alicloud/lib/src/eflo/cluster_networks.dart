// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_networks_ip_allocation_policy.dart';
import 'cluster_networks_new_vpd_info.dart';
import 'cluster_networks_vpd_info.dart';

class ClusterNetworks {
  /// IP allocation policy See `ip_allocation_policy` below.
  final pulumi.Input<List<ClusterNetworksIpAllocationPolicy>>? ipAllocationPolicies;
  /// Vpd configuration information See `new_vpd_info` below.
  final pulumi.Input<ClusterNetworksNewVpdInfo>? newVpdInfo;
  /// Security group ID
  final pulumi.Input<String>? securityGroupId;
  /// IP version
  final pulumi.Input<String>? tailIpVersion;
  /// VPC ID
  final pulumi.Input<String>? vpcId;
  /// Multiplexing VPD information See `vpd_info` below.
  final pulumi.Input<ClusterNetworksVpdInfo>? vpdInfo;
  /// Switch ID
  final pulumi.Input<String>? vswitchId;
  /// Switch ZoneID
  final pulumi.Input<String>? vswitchZoneId;

  /// Creates a new [ClusterNetworks].
  /// [ipAllocationPolicies] IP allocation policy See `ip_allocation_policy` below.
  /// [newVpdInfo] Vpd configuration information See `new_vpd_info` below.
  /// [securityGroupId] Security group ID
  /// [tailIpVersion] IP version
  /// [vpcId] VPC ID
  /// [vpdInfo] Multiplexing VPD information See `vpd_info` below.
  /// [vswitchId] Switch ID
  /// [vswitchZoneId] Switch ZoneID
  ClusterNetworks({
    this.ipAllocationPolicies,
    this.newVpdInfo,
    this.securityGroupId,
    this.tailIpVersion,
    this.vpcId,
    this.vpdInfo,
    this.vswitchId,
    this.vswitchZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAllocationPolicies': ?pulumi.Input.mapOptionalInputValue<List<ClusterNetworksIpAllocationPolicy>, List<Map<String, dynamic>>>(ipAllocationPolicies, (value) => pulumi.Input.encodeList<ClusterNetworksIpAllocationPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'newVpdInfo': ?pulumi.Input.mapOptionalInputValue<ClusterNetworksNewVpdInfo, Map<String, dynamic>>(newVpdInfo, (value) => value.toMap()),
      'securityGroupId': ?securityGroupId,
      'tailIpVersion': ?tailIpVersion,
      'vpcId': ?vpcId,
      'vpdInfo': ?pulumi.Input.mapOptionalInputValue<ClusterNetworksVpdInfo, Map<String, dynamic>>(vpdInfo, (value) => value.toMap()),
      'vswitchId': ?vswitchId,
      'vswitchZoneId': ?vswitchZoneId,
    };
  }

  factory ClusterNetworks.fromMap(Map<String, dynamic> map) {
    return ClusterNetworks(
      ipAllocationPolicies: map['ipAllocationPolicies'] == null ? null : (pulumi.Input.decodeList<ClusterNetworksIpAllocationPolicy>(map['ipAllocationPolicies']!, (value) => ClusterNetworksIpAllocationPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      newVpdInfo: map['newVpdInfo'] == null ? null : (ClusterNetworksNewVpdInfo.fromMap((map['newVpdInfo']! as Map).cast<String, dynamic>())).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId']! as String).input(),
      tailIpVersion: map['tailIpVersion'] == null ? null : (map['tailIpVersion']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vpdInfo: map['vpdInfo'] == null ? null : (ClusterNetworksVpdInfo.fromMap((map['vpdInfo']! as Map).cast<String, dynamic>())).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      vswitchZoneId: map['vswitchZoneId'] == null ? null : (map['vswitchZoneId']! as String).input(),
    );
  }
}

