// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpamIpamPool resources.
class IpamIpamPoolState {
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
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// The IP protocol version. Currently, only `IPv4` is supported * *.
  final pulumi.Input<String>? ipVersion;
  /// The description of the IPAM address pool.
  /// It must be 2 to 256 characters in length and must start with an English letter or a Chinese character, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  final pulumi.Input<String>? ipamPoolDescription;
  /// The name of the resource.
  final pulumi.Input<String>? ipamPoolName;
  /// Ipam scope id.
  final pulumi.Input<String>? ipamScopeId;
  /// The effective region of the IPAM address pool.
  final pulumi.Input<String>? poolRegionId;
  /// The ID of the IPAM hosting region.
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The instance ID of the source IPAM address pool.
  ///
  /// > **NOTE:**  If this parameter is not entered, the created address pool is the parent address pool.
  final pulumi.Input<String>? sourceIpamPoolId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpamIpamPoolState].
  /// [allocationDefaultCidrMask] The default network mask assigned by the IPAM address pool.
  /// [allocationMaxCidrMask] The maximum network mask assigned by the IPAM address pool.
  /// [allocationMinCidrMask] The minimum Network mask assigned by the IPAM address pool.
  /// [autoImport] Whether the automatic import function is enabled for the address pool.
  /// [clearAllocationDefaultCidrMask] Whether to clear the default network mask of the IPAM address pool. Value:
  /// [createTime] The creation time of the resource.
  /// [ipVersion] The IP protocol version. Currently, only `IPv4` is supported * *.
  /// [ipamPoolDescription] The description of the IPAM address pool.
  /// [ipamPoolName] The name of the resource.
  /// [ipamScopeId] Ipam scope id.
  /// [poolRegionId] The effective region of the IPAM address pool.
  /// [regionId] The ID of the IPAM hosting region.
  /// [resourceGroupId] The ID of the resource group.
  /// [sourceIpamPoolId] The instance ID of the source IPAM address pool.
  /// [status] The status of the resource.
  /// [tags] The tag of the resource.
  IpamIpamPoolState({
    this.allocationDefaultCidrMask,
    this.allocationMaxCidrMask,
    this.allocationMinCidrMask,
    this.autoImport,
    this.clearAllocationDefaultCidrMask,
    this.createTime,
    this.ipVersion,
    this.ipamPoolDescription,
    this.ipamPoolName,
    this.ipamScopeId,
    this.poolRegionId,
    this.regionId,
    this.resourceGroupId,
    this.sourceIpamPoolId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationDefaultCidrMask': ?allocationDefaultCidrMask,
      'allocationMaxCidrMask': ?allocationMaxCidrMask,
      'allocationMinCidrMask': ?allocationMinCidrMask,
      'autoImport': ?autoImport,
      'clearAllocationDefaultCidrMask': ?clearAllocationDefaultCidrMask,
      'createTime': ?createTime,
      'ipVersion': ?ipVersion,
      'ipamPoolDescription': ?ipamPoolDescription,
      'ipamPoolName': ?ipamPoolName,
      'ipamScopeId': ?ipamScopeId,
      'poolRegionId': ?poolRegionId,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'sourceIpamPoolId': ?sourceIpamPoolId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory IpamIpamPoolState.fromMap(Map<String, dynamic> map) {
    return IpamIpamPoolState(
      allocationDefaultCidrMask: map['allocationDefaultCidrMask'] == null ? null : (map['allocationDefaultCidrMask'] as int).input(),
      allocationMaxCidrMask: map['allocationMaxCidrMask'] == null ? null : (map['allocationMaxCidrMask'] as int).input(),
      allocationMinCidrMask: map['allocationMinCidrMask'] == null ? null : (map['allocationMinCidrMask'] as int).input(),
      autoImport: map['autoImport'] == null ? null : (map['autoImport'] as bool).input(),
      clearAllocationDefaultCidrMask: map['clearAllocationDefaultCidrMask'] == null ? null : (map['clearAllocationDefaultCidrMask'] as bool).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as String).input(),
      ipamPoolDescription: map['ipamPoolDescription'] == null ? null : (map['ipamPoolDescription'] as String).input(),
      ipamPoolName: map['ipamPoolName'] == null ? null : (map['ipamPoolName'] as String).input(),
      ipamScopeId: map['ipamScopeId'] == null ? null : (map['ipamScopeId'] as String).input(),
      poolRegionId: map['poolRegionId'] == null ? null : (map['poolRegionId'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      sourceIpamPoolId: map['sourceIpamPoolId'] == null ? null : (map['sourceIpamPoolId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

