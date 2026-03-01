// ignore_for_file: unused_element, unnecessary_cast


class GetIpamIpamPoolsPool {
  /// The default network mask assigned by the IPAM address pool.IPv4 network mask value range: **0 to 32** bits.
  final int allocationDefaultCidrMask;
  /// The maximum network mask assigned by the IPAM address pool.IPv4 network mask value range: **0 to 32** bits.
  final int allocationMaxCidrMask;
  /// The minimum Network mask assigned by the IPAM address pool.IPv4 network mask value range: **0 to 32** bits.
  final int allocationMinCidrMask;
  /// Whether the automatic import function is enabled for the address pool.
  final bool autoImport;
  /// The creation time of the resource.
  final String createTime;
  /// Whether it is a child address pool. Value:-**true**: Yes.-**false**: No.
  final bool hasSubPool;
  /// The ID of the resource supplied above.
  final String id;
  /// The IP protocol version. Currently, only **IPv4** is supported * *.
  final String ipVersion;
  /// Ipam id.
  final String ipamId;
  /// The description of the IPAM address pool.It must be 2 to 256 characters in length and must start with an English letter or a Chinese character, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  final String ipamPoolDescription;
  /// The first ID of the resource.
  final String ipamPoolId;
  /// The name of the resource.
  final String ipamPoolName;
  /// Ipam scope id.
  final String ipamScopeId;
  /// The depth of the IPAM address pool. Value range: **0 to 10 * *.
  final int poolDepth;
  /// The effective region of the IPAM address pool.
  final String poolRegionId;
  /// The region ID of the resource.
  final String regionId;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The instance ID of the source IPAM address pool.> If this parameter is not entered, the created address pool is the parent address pool.
  final String sourceIpamPoolId;
  /// The status of the resource.
  final String status;
  /// The tag of the resource.
  final Map<String, String> tags;

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
  /// [sourceIpamPoolId] The instance ID of the source IPAM address pool.> If this parameter is not entered, the created address pool is the parent address pool.
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
      allocationDefaultCidrMask: map['allocationDefaultCidrMask'] as int,
      allocationMaxCidrMask: map['allocationMaxCidrMask'] as int,
      allocationMinCidrMask: map['allocationMinCidrMask'] as int,
      autoImport: map['autoImport'] as bool,
      createTime: map['createTime'] as String,
      hasSubPool: map['hasSubPool'] as bool,
      id: map['id'] as String,
      ipVersion: map['ipVersion'] as String,
      ipamId: map['ipamId'] as String,
      ipamPoolDescription: map['ipamPoolDescription'] as String,
      ipamPoolId: map['ipamPoolId'] as String,
      ipamPoolName: map['ipamPoolName'] as String,
      ipamScopeId: map['ipamScopeId'] as String,
      poolDepth: map['poolDepth'] as int,
      poolRegionId: map['poolRegionId'] as String,
      regionId: map['regionId'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      sourceIpamPoolId: map['sourceIpamPoolId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

