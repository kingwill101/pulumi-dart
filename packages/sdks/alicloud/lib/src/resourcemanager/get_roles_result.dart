// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_roles_role.dart';

/// Result data returned by getRoles.
class GetRolesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of role IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of role names.
  final List<String> names;
  final String? outputFile;
  /// A list of roles. Each element contains the following attributes:
  final List<GetRolesRole> roles;

  /// Creates a new [GetRolesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of role IDs.
  /// [nameRegex] Optional.
  /// [names] A list of role names.
  /// [outputFile] Optional.
  /// [roles] A list of roles. Each element contains the following attributes:
  GetRolesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'roles': pulumi.Input.encodeList<GetRolesRole, Map<String, dynamic>>(roles, (value) => value.toMap()),
    };
  }

  factory GetRolesResult.fromMap(Map<String, dynamic> map) {
    return GetRolesResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      roles: pulumi.Input.decodeList<GetRolesRole>(map['roles'], (value) => GetRolesRole.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

