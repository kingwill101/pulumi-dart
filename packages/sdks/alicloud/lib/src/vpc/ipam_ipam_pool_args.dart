// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipam_ipam_pool_ipam_ipam_pool_args_doc}
/// The set of arguments for IpamIpamPool.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipam_ipam_pool_ipam_ipam_pool_args_doc}
class IpamIpamPoolArgs {
  /// The default network mask assigned by the IPAM address pool.
  /// IPv4 network mask value range: **0 to 32** bits.
  final pulumi.Input<int>? allocationDefaultCidrMask;
  /// The maximum network mask assigned by the IPAM address pool.
  /// IPv4 network mask value range: **0 to 32** bits.
  final pulumi.Input<int>? allocationMaxCidrMask;
  /// The minimum Network mask assigned by the IPAM address pool.
  /// IPv4 network mask value range: **0 to 32** bits.
  final pulumi.Input<int>? allocationMinCidrMask;
  /// Whether the automatic import function is enabled for the address pool.
  final pulumi.Input<bool>? autoImport;
  /// Whether to clear the default network mask of the IPAM address pool. Value:
  final pulumi.Input<bool>? clearAllocationDefaultCidrMask;
  /// The IP protocol version. Currently, only `IPv4` is supported * *.
  final pulumi.Input<String>? ipVersion;
  /// The description of the IPAM address pool.
  /// It must be 2 to 256 characters in length and must start with an English letter or a Chinese character, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  final pulumi.Input<String>? ipamPoolDescription;
  /// The name of the resource.
  final pulumi.Input<String>? ipamPoolName;
  /// Ipam scope id.
  final pulumi.Input<String> ipamScopeId;
  /// The effective region of the IPAM address pool.
  final pulumi.Input<String>? poolRegionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The instance ID of the source IPAM address pool.
  ///
  /// > **NOTE:**  If this parameter is not entered, the created address pool is the parent address pool.
  final pulumi.Input<String>? sourceIpamPoolId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpamIpamPoolArgs].
  /// [allocationDefaultCidrMask] The default network mask assigned by the IPAM address pool.
  /// [allocationMaxCidrMask] The maximum network mask assigned by the IPAM address pool.
  /// [allocationMinCidrMask] The minimum Network mask assigned by the IPAM address pool.
  /// [autoImport] Whether the automatic import function is enabled for the address pool.
  /// [clearAllocationDefaultCidrMask] Whether to clear the default network mask of the IPAM address pool. Value:
  /// [ipVersion] The IP protocol version. Currently, only `IPv4` is supported * *.
  /// [ipamPoolDescription] The description of the IPAM address pool.
  /// [ipamPoolName] The name of the resource.
  /// [ipamScopeId] Ipam scope id.
  /// [poolRegionId] The effective region of the IPAM address pool.
  /// [resourceGroupId] The ID of the resource group.
  /// [sourceIpamPoolId] The instance ID of the source IPAM address pool.
  /// [tags] The tag of the resource.
  IpamIpamPoolArgs({
    this.allocationDefaultCidrMask,
    this.allocationMaxCidrMask,
    this.allocationMinCidrMask,
    this.autoImport,
    this.clearAllocationDefaultCidrMask,
    this.ipVersion,
    this.ipamPoolDescription,
    this.ipamPoolName,
    required this.ipamScopeId,
    this.poolRegionId,
    this.resourceGroupId,
    this.sourceIpamPoolId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationDefaultCidrMask': ?allocationDefaultCidrMask,
      'allocationMaxCidrMask': ?allocationMaxCidrMask,
      'allocationMinCidrMask': ?allocationMinCidrMask,
      'autoImport': ?autoImport,
      'clearAllocationDefaultCidrMask': ?clearAllocationDefaultCidrMask,
      'ipVersion': ?ipVersion,
      'ipamPoolDescription': ?ipamPoolDescription,
      'ipamPoolName': ?ipamPoolName,
      'ipamScopeId': ipamScopeId,
      'poolRegionId': ?poolRegionId,
      'resourceGroupId': ?resourceGroupId,
      'sourceIpamPoolId': ?sourceIpamPoolId,
      'tags': ?tags,
    };
  }

  factory IpamIpamPoolArgs.fromMap(Map<String, dynamic> map) {
    return IpamIpamPoolArgs(
      allocationDefaultCidrMask: map['allocationDefaultCidrMask'] == null ? null : (map['allocationDefaultCidrMask'] as int).input(),
      allocationMaxCidrMask: map['allocationMaxCidrMask'] == null ? null : (map['allocationMaxCidrMask'] as int).input(),
      allocationMinCidrMask: map['allocationMinCidrMask'] == null ? null : (map['allocationMinCidrMask'] as int).input(),
      autoImport: map['autoImport'] == null ? null : (map['autoImport'] as bool).input(),
      clearAllocationDefaultCidrMask: map['clearAllocationDefaultCidrMask'] == null ? null : (map['clearAllocationDefaultCidrMask'] as bool).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as String).input(),
      ipamPoolDescription: map['ipamPoolDescription'] == null ? null : (map['ipamPoolDescription'] as String).input(),
      ipamPoolName: map['ipamPoolName'] == null ? null : (map['ipamPoolName'] as String).input(),
      ipamScopeId: (map['ipamScopeId'] as String).input(),
      poolRegionId: map['poolRegionId'] == null ? null : (map['poolRegionId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      sourceIpamPoolId: map['sourceIpamPoolId'] == null ? null : (map['sourceIpamPoolId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

