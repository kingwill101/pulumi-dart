// ignore_for_file: unused_element, unnecessary_cast

import 'lake_account_account_privilege_privilege_object.dart';

class LakeAccountAccountPrivilege {
  /// Object associated to privileges. See `privilege_object` below.
  final LakeAccountAccountPrivilegePrivilegeObject? privilegeObject;
  /// The type of privileges.
  final String? privilegeType;
  /// privilege list.
  final List<String>? privileges;

  /// Creates a new [LakeAccountAccountPrivilege].
  /// [privilegeObject] Object associated to privileges. See `privilege_object` below.
  /// [privilegeType] The type of privileges.
  /// [privileges] privilege list.
  LakeAccountAccountPrivilege({
    this.privilegeObject,
    this.privilegeType,
    this.privileges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privilegeObject': ?privilegeObject == null ? null : privilegeObject!.toMap(),
      'privilegeType': ?privilegeType,
      'privileges': ?privileges,
    };
  }

  factory LakeAccountAccountPrivilege.fromMap(Map<String, dynamic> map) {
    return LakeAccountAccountPrivilege(
      privilegeObject: map['privilegeObject'] == null ? null : LakeAccountAccountPrivilegePrivilegeObject.fromMap((map['privilegeObject'] as Map).cast<String, dynamic>()),
      privilegeType: map['privilegeType'] == null ? null : map['privilegeType'] as String,
      privileges: map['privileges'] == null ? null : (map['privileges'] as List).cast<String>(),
    );
  }
}

