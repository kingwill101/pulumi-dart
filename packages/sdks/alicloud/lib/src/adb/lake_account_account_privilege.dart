// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lake_account_account_privilege_privilege_object.dart';

class LakeAccountAccountPrivilege {
  /// Object associated to privileges. See `privilege_object` below.
  final pulumi.Input<LakeAccountAccountPrivilegePrivilegeObject>? privilegeObject;
  /// The type of privileges.
  final pulumi.Input<String>? privilegeType;
  /// privilege list.
  final pulumi.Input<List<String>>? privileges;

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
      'privilegeObject': ?pulumi.Input.mapOptionalInputValue<LakeAccountAccountPrivilegePrivilegeObject, Map<String, dynamic>>(privilegeObject, (value) => value.toMap()),
      'privilegeType': ?privilegeType,
      'privileges': ?privileges,
    };
  }

  factory LakeAccountAccountPrivilege.fromMap(Map<String, dynamic> map) {
    return LakeAccountAccountPrivilege(
      privilegeObject: map['privilegeObject'] == null ? null : (LakeAccountAccountPrivilegePrivilegeObject.fromMap((map['privilegeObject'] as Map).cast<String, dynamic>())).input(),
      privilegeType: map['privilegeType'] == null ? null : (map['privilegeType'] as String).input(),
      privileges: map['privileges'] == null ? null : ((map['privileges'] as List).cast<String>()).input(),
    );
  }
}

