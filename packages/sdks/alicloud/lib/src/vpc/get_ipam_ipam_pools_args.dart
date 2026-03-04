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

  /// The instance ID of the source IPAM address pool.&gt; If this parameter is not entered, the created address pool is the parent address pool.
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
  /// [sourceIpamPoolId] The instance ID of the source IPAM address pool.&gt; If this parameter is not entered, the created address pool is the parent address pool.
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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ipamPoolId: (() {
        final guardedValue = map['ipamPoolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipamPoolName: (() {
        final guardedValue = map['ipamPoolName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipamScopeId: (() {
        final guardedValue = map['ipamScopeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      poolRegionId: (() {
        final guardedValue = map['poolRegionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceIpamPoolId: (() {
        final guardedValue = map['sourceIpamPoolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
