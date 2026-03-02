// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ipam_ipam_scopes_get_ipam_ipam_scopes_args_doc}
/// Arguments for getIpamIpamScopes.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ipam_ipam_scopes_get_ipam_ipam_scopes_args_doc}
class GetIpamIpamScopesArgs {
  /// A list of Ipam Scope IDs.
  final pulumi.Input<List<String>>? ids;
  /// The id of the Ipam instance.
  final pulumi.Input<String>? ipamId;
  /// The first ID of the resource.
  final pulumi.Input<String>? ipamScopeId;
  /// The name of the resource.
  final pulumi.Input<String>? ipamScopeName;
  /// IPAM scope of action type:**private**.> Currently, only the role scope of the private network is supported.
  final pulumi.Input<String>? ipamScopeType;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetIpamIpamScopesArgs].
  /// [ids] A list of Ipam Scope IDs.
  /// [ipamId] The id of the Ipam instance.
  /// [ipamScopeId] The first ID of the resource.
  /// [ipamScopeName] The name of the resource.
  /// [ipamScopeType] IPAM scope of action type:**private**.> Currently, only the role scope of the private network is supported.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the resource.
  GetIpamIpamScopesArgs({
    this.ids,
    this.ipamId,
    this.ipamScopeId,
    this.ipamScopeName,
    this.ipamScopeType,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'ipamId': ?ipamId,
      'ipamScopeId': ?ipamScopeId,
      'ipamScopeName': ?ipamScopeName,
      'ipamScopeType': ?ipamScopeType,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetIpamIpamScopesArgs.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamScopesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      ipamId: map['ipamId'] == null ? null : (map['ipamId'] as String).input(),
      ipamScopeId: map['ipamScopeId'] == null ? null : (map['ipamScopeId'] as String).input(),
      ipamScopeName: map['ipamScopeName'] == null ? null : (map['ipamScopeName'] as String).input(),
      ipamScopeType: map['ipamScopeType'] == null ? null : (map['ipamScopeType'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

