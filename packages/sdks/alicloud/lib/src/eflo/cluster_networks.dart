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
      ipAllocationPolicies: (() { final guardedValue = map['ipAllocationPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNetworksIpAllocationPolicy>(guardedValue, (value) => ClusterNetworksIpAllocationPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      newVpdInfo: (() { final guardedValue = map['newVpdInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNetworksNewVpdInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tailIpVersion: (() { final guardedValue = map['tailIpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpdInfo: (() { final guardedValue = map['vpdInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNetworksVpdInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchZoneId: (() { final guardedValue = map['vswitchZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

