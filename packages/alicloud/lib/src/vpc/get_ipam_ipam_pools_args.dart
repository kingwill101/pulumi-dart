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
    List<String>? ids,
    String? ipamPoolId,
    String? ipamPoolName,
    String? ipamScopeId,
    String? nameRegex,
    String? outputFile,
    String? poolRegionId,
    String? resourceGroupId,
    String? sourceIpamPoolId,
    Map<String, String>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      ipamPoolId = pulumi.Input.asOptionalInput<String>(ipamPoolId),
      ipamPoolName = pulumi.Input.asOptionalInput<String>(ipamPoolName),
      ipamScopeId = pulumi.Input.asOptionalInput<String>(ipamScopeId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      poolRegionId = pulumi.Input.asOptionalInput<String>(poolRegionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sourceIpamPoolId = pulumi.Input.asOptionalInput<String>(sourceIpamPoolId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      ipamPoolId: map['ipamPoolId'] == null ? null : map['ipamPoolId'] as String,
      ipamPoolName: map['ipamPoolName'] == null ? null : map['ipamPoolName'] as String,
      ipamScopeId: map['ipamScopeId'] == null ? null : map['ipamScopeId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      poolRegionId: map['poolRegionId'] == null ? null : map['poolRegionId'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      sourceIpamPoolId: map['sourceIpamPoolId'] == null ? null : map['sourceIpamPoolId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

