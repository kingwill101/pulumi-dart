// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission.dart';
import 'principal.dart';

class RbacPolicy {
  /// Name of the RbacPolicy.
  final String? name;

  /// The list of permissions.
  final List<Permission>? permissions;

  /// The list of principals.
  final List<Principal>? principals;

  RbacPolicy({
    this.name,
    this.permissions,
    this.principals,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] =
          pulumi.Input.encodeList<Permission, Map<String, dynamic>>(
              permissionsValue, (value) => value.toMap());
    }
    final principalsValue = principals;
    if (principalsValue != null) {
      map['principals'] =
          pulumi.Input.encodeList<Principal, Map<String, dynamic>>(
              principalsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RbacPolicy.fromMap(Map<String, dynamic> map) {
    return RbacPolicy(
      name: map['name'] == null ? null : map['name'] as String,
      permissions: map['permissions'] == null
          ? null
          : pulumi.Input.decodeList<Permission>(
              map['permissions'],
              (value) =>
                  Permission.fromMap((value as Map).cast<String, dynamic>())),
      principals: map['principals'] == null
          ? null
          : pulumi.Input.decodeList<Principal>(
              map['principals'],
              (value) =>
                  Principal.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
