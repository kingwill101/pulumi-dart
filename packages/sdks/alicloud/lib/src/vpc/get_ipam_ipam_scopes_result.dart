// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipam_ipam_scopes_scope.dart';

/// Result data returned by getIpamIpamScopes.
class GetIpamIpamScopesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Ipam Scope IDs.
  final List<String> ids;
  /// The id of the Ipam instance.
  final String? ipamId;
  /// The first ID of the resource.
  final String? ipamScopeId;
  /// The name of the resource.
  final String? ipamScopeName;
  /// IPAM scope of action type:**private**.> Currently, only the role scope of the private network is supported.
  final String? ipamScopeType;
  final String? nameRegex;
  /// A list of name of Ipam Scopes.
  final List<String> names;
  final String? outputFile;
  /// The ID of the resource group.
  final String? resourceGroupId;
  /// A list of Ipam Scope Entries. Each element contains the following attributes:
  final List<GetIpamIpamScopesScope> scopes;
  /// The tag of the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetIpamIpamScopesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Ipam Scope IDs.
  /// [ipamId] The id of the Ipam instance.
  /// [ipamScopeId] The first ID of the resource.
  /// [ipamScopeName] The name of the resource.
  /// [ipamScopeType] IPAM scope of action type:**private**.> Currently, only the role scope of the private network is supported.
  /// [nameRegex] Optional.
  /// [names] A list of name of Ipam Scopes.
  /// [outputFile] Optional.
  /// [resourceGroupId] The ID of the resource group.
  /// [scopes] A list of Ipam Scope Entries. Each element contains the following attributes:
  /// [tags] The tag of the resource.
  GetIpamIpamScopesResult({
    required this.id,
    required this.ids,
    this.ipamId,
    this.ipamScopeId,
    this.ipamScopeName,
    this.ipamScopeType,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    required this.scopes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'ipamId': ?ipamId,
      'ipamScopeId': ?ipamScopeId,
      'ipamScopeName': ?ipamScopeName,
      'ipamScopeType': ?ipamScopeType,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'scopes': pulumi.Input.encodeList<GetIpamIpamScopesScope, Map<String, dynamic>>(scopes, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GetIpamIpamScopesResult.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamScopesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipamId: map['ipamId'] == null ? null : map['ipamId'] as String,
      ipamScopeId: map['ipamScopeId'] == null ? null : map['ipamScopeId'] as String,
      ipamScopeName: map['ipamScopeName'] == null ? null : map['ipamScopeName'] as String,
      ipamScopeType: map['ipamScopeType'] == null ? null : map['ipamScopeType'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      scopes: pulumi.Input.decodeList<GetIpamIpamScopesScope>(map['scopes'], (value) => GetIpamIpamScopesScope.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

