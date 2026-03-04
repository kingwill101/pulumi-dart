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

  /// IPAM scope of action type:**private**.&gt; Currently, only the role scope of the private network is supported.
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
  /// [ipamScopeType] IPAM scope of action type:**private**.&gt; Currently, only the role scope of the private network is supported.
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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ipamId: (() {
        final guardedValue = map['ipamId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipamScopeId: (() {
        final guardedValue = map['ipamScopeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipamScopeName: (() {
        final guardedValue = map['ipamScopeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipamScopeType: (() {
        final guardedValue = map['ipamScopeType'];
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
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
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
