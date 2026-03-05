// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpamIpamPoolsPool {
  /// The default network mask assigned by the IPAM address pool.IPv4 network mask value range: **0 to 32** bits.
  final pulumi.Input<int> allocationDefaultCidrMask;
  /// The maximum network mask assigned by the IPAM address pool.IPv4 network mask value range: **0 to 32** bits.
  final pulumi.Input<int> allocationMaxCidrMask;
  /// The minimum Network mask assigned by the IPAM address pool.IPv4 network mask value range: **0 to 32** bits.
  final pulumi.Input<int> allocationMinCidrMask;
  /// Whether the automatic import function is enabled for the address pool.
  final pulumi.Input<bool> autoImport;
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// Whether it is a child address pool. Value:-**true**: Yes.-**false**: No.
  final pulumi.Input<bool> hasSubPool;
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// The IP protocol version. Currently, only **IPv4** is supported * *.
  final pulumi.Input<String> ipVersion;
  /// Ipam id.
  final pulumi.Input<String> ipamId;
  /// The description of the IPAM address pool.It must be 2 to 256 characters in length and must start with an English letter or a Chinese character, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  final pulumi.Input<String> ipamPoolDescription;
  /// The first ID of the resource.
  final pulumi.Input<String> ipamPoolId;
  /// The name of the resource.
  final pulumi.Input<String> ipamPoolName;
  /// Ipam scope id.
  final pulumi.Input<String> ipamScopeId;
  /// The depth of the IPAM address pool. Value range: **0 to 10 * *.
  final pulumi.Input<int> poolDepth;
  /// The effective region of the IPAM address pool.
  final pulumi.Input<String> poolRegionId;
  /// The region ID of the resource.
  final pulumi.Input<String> regionId;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The instance ID of the source IPAM address pool.&gt; If this parameter is not entered, the created address pool is the parent address pool.
  final pulumi.Input<String> sourceIpamPoolId;
  /// The status of the resource.
  final pulumi.Input<String> status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetIpamIpamPoolsPool].
  /// [allocationDefaultCidrMask] The default network mask assigned by the IPAM address pool.IPv4 network mask value range: **0 to 32** bits.
  /// [allocationMaxCidrMask] The maximum network mask assigned by the IPAM address pool.IPv4 network mask value range: **0 to 32** bits.
  /// [allocationMinCidrMask] The minimum Network mask assigned by the IPAM address pool.IPv4 network mask value range: **0 to 32** bits.
  /// [autoImport] Whether the automatic import function is enabled for the address pool.
  /// [createTime] The creation time of the resource.
  /// [hasSubPool] Whether it is a child address pool. Value:-**true**: Yes.-**false**: No.
  /// [id] The ID of the resource supplied above.
  /// [ipVersion] The IP protocol version. Currently, only **IPv4** is supported * *.
  /// [ipamId] Ipam id.
  /// [ipamPoolDescription] The description of the IPAM address pool.It must be 2 to 256 characters in length and must start with an English letter or a Chinese character, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  /// [ipamPoolId] The first ID of the resource.
  /// [ipamPoolName] The name of the resource.
  /// [ipamScopeId] Ipam scope id.
  /// [poolDepth] The depth of the IPAM address pool. Value range: **0 to 10 * *.
  /// [poolRegionId] The effective region of the IPAM address pool.
  /// [regionId] The region ID of the resource.
  /// [resourceGroupId] The ID of the resource group.
  /// [sourceIpamPoolId] The instance ID of the source IPAM address pool.&gt; If this parameter is not entered, the created address pool is the parent address pool.
  /// [status] The status of the resource.
  /// [tags] The tag of the resource.
  GetIpamIpamPoolsPool({
    required this.allocationDefaultCidrMask,
    required this.allocationMaxCidrMask,
    required this.allocationMinCidrMask,
    required this.autoImport,
    required this.createTime,
    required this.hasSubPool,
    required this.id,
    required this.ipVersion,
    required this.ipamId,
    required this.ipamPoolDescription,
    required this.ipamPoolId,
    required this.ipamPoolName,
    required this.ipamScopeId,
    required this.poolDepth,
    required this.poolRegionId,
    required this.regionId,
    required this.resourceGroupId,
    required this.sourceIpamPoolId,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationDefaultCidrMask': allocationDefaultCidrMask,
      'allocationMaxCidrMask': allocationMaxCidrMask,
      'allocationMinCidrMask': allocationMinCidrMask,
      'autoImport': autoImport,
      'createTime': createTime,
      'hasSubPool': hasSubPool,
      'id': id,
      'ipVersion': ipVersion,
      'ipamId': ipamId,
      'ipamPoolDescription': ipamPoolDescription,
      'ipamPoolId': ipamPoolId,
      'ipamPoolName': ipamPoolName,
      'ipamScopeId': ipamScopeId,
      'poolDepth': poolDepth,
      'poolRegionId': poolRegionId,
      'regionId': regionId,
      'resourceGroupId': resourceGroupId,
      'sourceIpamPoolId': sourceIpamPoolId,
      'status': status,
      'tags': tags,
    };
  }

  factory GetIpamIpamPoolsPool.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamPoolsPool(
      allocationDefaultCidrMask: pulumi.Input.fromValue(map['allocationDefaultCidrMask'] as int),
      allocationMaxCidrMask: pulumi.Input.fromValue(map['allocationMaxCidrMask'] as int),
      allocationMinCidrMask: pulumi.Input.fromValue(map['allocationMinCidrMask'] as int),
      autoImport: pulumi.Input.fromValue(map['autoImport'] as bool),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      hasSubPool: pulumi.Input.fromValue(map['hasSubPool'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipVersion: pulumi.Input.fromValue(map['ipVersion'] as String),
      ipamId: pulumi.Input.fromValue(map['ipamId'] as String),
      ipamPoolDescription: pulumi.Input.fromValue(map['ipamPoolDescription'] as String),
      ipamPoolId: pulumi.Input.fromValue(map['ipamPoolId'] as String),
      ipamPoolName: pulumi.Input.fromValue(map['ipamPoolName'] as String),
      ipamScopeId: pulumi.Input.fromValue(map['ipamScopeId'] as String),
      poolDepth: pulumi.Input.fromValue(map['poolDepth'] as int),
      poolRegionId: pulumi.Input.fromValue(map['poolRegionId'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      sourceIpamPoolId: pulumi.Input.fromValue(map['sourceIpamPoolId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}

