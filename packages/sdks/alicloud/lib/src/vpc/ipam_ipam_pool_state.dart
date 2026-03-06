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
  /// &gt; **NOTE:**  If this parameter is not entered, the created address pool is the parent address pool.
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
  const IpamIpamPoolState({
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
      allocationDefaultCidrMask: (() { final guardedValue = map['allocationDefaultCidrMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      allocationMaxCidrMask: (() { final guardedValue = map['allocationMaxCidrMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      allocationMinCidrMask: (() { final guardedValue = map['allocationMinCidrMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoImport: (() { final guardedValue = map['autoImport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clearAllocationDefaultCidrMask: (() { final guardedValue = map['clearAllocationDefaultCidrMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamPoolDescription: (() { final guardedValue = map['ipamPoolDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamPoolName: (() { final guardedValue = map['ipamPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamScopeId: (() { final guardedValue = map['ipamScopeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolRegionId: (() { final guardedValue = map['poolRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIpamPoolId: (() { final guardedValue = map['sourceIpamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

