// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ipam_ipam_pools_get_ipam_ipam_pools_args_doc}
/// Arguments for getIpamIpamPools.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ipam_ipam_pools_get_ipam_ipam_pools_args_doc}
class GetIpamIpamPoolsArgs {
  /// A list of Ipam Pool IDs.
  final pulumi.Input<List<String>>? ids;
  /// The first ID of the resource.
  final pulumi.Input<String>? ipamPoolId;
  /// The name of the resource.
  final pulumi.Input<String>? ipamPoolName;
  /// Ipam scope id.
  final pulumi.Input<String>? ipamScopeId;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The effective region of the IPAM address pool.
  final pulumi.Input<String>? poolRegionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The instance ID of the source IPAM address pool.> If this parameter is not entered, the created address pool is the parent address pool.
  final pulumi.Input<String>? sourceIpamPoolId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetIpamIpamPoolsArgs].
  /// [ids] A list of Ipam Pool IDs.
  /// [ipamPoolId] The first ID of the resource.
  /// [ipamPoolName] The name of the resource.
  /// [ipamScopeId] Ipam scope id.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [poolRegionId] The effective region of the IPAM address pool.
  /// [resourceGroupId] The ID of the resource group.
  /// [sourceIpamPoolId] The instance ID of the source IPAM address pool.> If this parameter is not entered, the created address pool is the parent address pool.
  /// [tags] The tag of the resource.
  GetIpamIpamPoolsArgs({
    this.ids,
    this.ipamPoolId,
    this.ipamPoolName,
    this.ipamScopeId,
    this.nameRegex,
    this.outputFile,
    this.poolRegionId,
    this.resourceGroupId,
    this.sourceIpamPoolId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'ipamPoolId': ?ipamPoolId,
      'ipamPoolName': ?ipamPoolName,
      'ipamScopeId': ?ipamScopeId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'poolRegionId': ?poolRegionId,
      'resourceGroupId': ?resourceGroupId,
      'sourceIpamPoolId': ?sourceIpamPoolId,
      'tags': ?tags,
    };
  }

  factory GetIpamIpamPoolsArgs.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamPoolsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      ipamPoolId: map['ipamPoolId'] == null ? null : (map['ipamPoolId'] as String).input(),
      ipamPoolName: map['ipamPoolName'] == null ? null : (map['ipamPoolName'] as String).input(),
      ipamScopeId: map['ipamScopeId'] == null ? null : (map['ipamScopeId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      poolRegionId: map['poolRegionId'] == null ? null : (map['poolRegionId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      sourceIpamPoolId: map['sourceIpamPoolId'] == null ? null : (map['sourceIpamPoolId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

