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
  /// IPAM scope of action type:**private**.&gt; Currently, only the role scope of the private network is supported.
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
  /// [ipamScopeType] IPAM scope of action type:**private**.&gt; Currently, only the role scope of the private network is supported.
  /// [nameRegex] Optional.
  /// [names] A list of name of Ipam Scopes.
  /// [outputFile] Optional.
  /// [resourceGroupId] The ID of the resource group.
  /// [scopes] A list of Ipam Scope Entries. Each element contains the following attributes:
  /// [tags] The tag of the resource.
  const GetIpamIpamScopesResult({
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
      ipamId: (() { final guardedValue = map['ipamId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamScopeId: (() { final guardedValue = map['ipamScopeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamScopeName: (() { final guardedValue = map['ipamScopeName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamScopeType: (() { final guardedValue = map['ipamScopeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopes: pulumi.Input.decodeList<GetIpamIpamScopesScope>(map['scopes']!, (value) => GetIpamIpamScopesScope.fromMap((value as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

