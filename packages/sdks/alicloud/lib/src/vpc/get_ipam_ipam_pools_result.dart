// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipam_ipam_pools_pool.dart';

/// Result data returned by getIpamIpamPools.
class GetIpamIpamPoolsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Ipam Pool IDs.
  final List<String> ids;
  /// The first ID of the resource.
  final String? ipamPoolId;
  /// The name of the resource.
  final String? ipamPoolName;
  /// Ipam scope id.
  final String? ipamScopeId;
  final String? nameRegex;
  /// A list of name of Ipam Pools.
  final List<String> names;
  final String? outputFile;
  /// The effective region of the IPAM address pool.
  final String? poolRegionId;
  /// A list of Ipam Pool Entries. Each element contains the following attributes:
  final List<GetIpamIpamPoolsPool> pools;
  /// The ID of the resource group.
  final String? resourceGroupId;
  /// The instance ID of the source IPAM address pool.> If this parameter is not entered, the created address pool is the parent address pool.
  final String? sourceIpamPoolId;
  /// The tag of the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetIpamIpamPoolsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Ipam Pool IDs.
  /// [ipamPoolId] The first ID of the resource.
  /// [ipamPoolName] The name of the resource.
  /// [ipamScopeId] Ipam scope id.
  /// [nameRegex] Optional.
  /// [names] A list of name of Ipam Pools.
  /// [outputFile] Optional.
  /// [poolRegionId] The effective region of the IPAM address pool.
  /// [pools] A list of Ipam Pool Entries. Each element contains the following attributes:
  /// [resourceGroupId] The ID of the resource group.
  /// [sourceIpamPoolId] The instance ID of the source IPAM address pool.> If this parameter is not entered, the created address pool is the parent address pool.
  /// [tags] The tag of the resource.
  GetIpamIpamPoolsResult({
    required this.id,
    required this.ids,
    this.ipamPoolId,
    this.ipamPoolName,
    this.ipamScopeId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.poolRegionId,
    required this.pools,
    this.resourceGroupId,
    this.sourceIpamPoolId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'ipamPoolId': ?ipamPoolId,
      'ipamPoolName': ?ipamPoolName,
      'ipamScopeId': ?ipamScopeId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'poolRegionId': ?poolRegionId,
      'pools': pulumi.Input.encodeList<GetIpamIpamPoolsPool, Map<String, dynamic>>(pools, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'sourceIpamPoolId': ?sourceIpamPoolId,
      'tags': ?tags,
    };
  }

  factory GetIpamIpamPoolsResult.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamPoolsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipamPoolId: map['ipamPoolId'] == null ? null : map['ipamPoolId'] as String,
      ipamPoolName: map['ipamPoolName'] == null ? null : map['ipamPoolName'] as String,
      ipamScopeId: map['ipamScopeId'] == null ? null : map['ipamScopeId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      poolRegionId: map['poolRegionId'] == null ? null : map['poolRegionId'] as String,
      pools: pulumi.Input.decodeList<GetIpamIpamPoolsPool>(map['pools'], (value) => GetIpamIpamPoolsPool.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      sourceIpamPoolId: map['sourceIpamPoolId'] == null ? null : map['sourceIpamPoolId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

