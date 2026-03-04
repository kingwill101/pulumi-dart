// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lake_account_account_privilege_privilege_object.dart';

class LakeAccountAccountPrivilege {
  /// Object associated to privileges. See `privilege_object` below.
  final pulumi.Input<LakeAccountAccountPrivilegePrivilegeObject>?
  privilegeObject;

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
      'privilegeObject':
          ?pulumi.Input.mapOptionalInputValue<
            LakeAccountAccountPrivilegePrivilegeObject,
            Map<String, dynamic>
          >(privilegeObject, (value) => value.toMap()),
      'privilegeType': ?privilegeType,
      'privileges': ?privileges,
    };
  }

  factory LakeAccountAccountPrivilege.fromMap(Map<String, dynamic> map) {
    return LakeAccountAccountPrivilege(
      privilegeObject: (() {
        final guardedValue = map['privilegeObject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LakeAccountAccountPrivilegePrivilegeObject.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privilegeType: (() {
        final guardedValue = map['privilegeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privileges: (() {
        final guardedValue = map['privileges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
