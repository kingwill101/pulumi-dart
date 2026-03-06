// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_roles_role.dart';

/// Result data returned by getRoles.
class GetRolesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// (Available since v1.42.0) A list of Role names.
  final List<String> names;
  final String? outputFile;
  final String? policyName;
  final String? policyType;
  /// A list of Role. Each element contains the following attributes:
  final List<GetRolesRole> roles;
  /// (Available since v1.262.1) The tags of the RAM role.
  final Map<String, String>? tags;

  /// Creates a new [GetRolesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] (Available since v1.42.0) A list of Role names.
  /// [outputFile] Optional.
  /// [policyName] Optional.
  /// [policyType] Optional.
  /// [roles] A list of Role. Each element contains the following attributes:
  /// [tags] (Available since v1.262.1) The tags of the RAM role.
  const GetRolesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.policyName,
    this.policyType,
    required this.roles,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policyName': ?policyName,
      'policyType': ?policyType,
      'roles': pulumi.Input.encodeList<GetRolesRole, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GetRolesResult.fromMap(Map<String, dynamic> map) {
    return GetRolesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roles: pulumi.Input.decodeList<GetRolesRole>(map['roles']!, (value) => GetRolesRole.fromMap((value as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

