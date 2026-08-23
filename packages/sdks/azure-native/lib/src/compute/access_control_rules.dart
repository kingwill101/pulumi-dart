// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_rules_identity.dart';
import 'access_control_rules_privilege.dart';
import 'access_control_rules_role.dart';
import 'access_control_rules_role_assignment.dart';

/// This is the Access Control Rules specification for an inVMAccessControlProfile version.
class AccessControlRules {
  /// A list of identities.
  final pulumi.Input<List<AccessControlRulesIdentity>>? identities;
  /// A list of privileges.
  final pulumi.Input<List<AccessControlRulesPrivilege>>? privileges;
  /// A list of role assignments.
  final pulumi.Input<List<AccessControlRulesRoleAssignment>>? roleAssignments;
  /// A list of roles.
  final pulumi.Input<List<AccessControlRulesRole>>? roles;

  /// Creates a new [AccessControlRules].
  /// [identities] A list of identities.
  /// [privileges] A list of privileges.
  /// [roleAssignments] A list of role assignments.
  /// [roles] A list of roles.
  const AccessControlRules({
    this.identities,
    this.privileges,
    this.roleAssignments,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': ?pulumi.Input.mapOptionalInputValue<List<AccessControlRulesIdentity>, List<Map<String, dynamic>>>(identities, (value) => pulumi.Input.encodeList<AccessControlRulesIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privileges': ?pulumi.Input.mapOptionalInputValue<List<AccessControlRulesPrivilege>, List<Map<String, dynamic>>>(privileges, (value) => pulumi.Input.encodeList<AccessControlRulesPrivilege, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleAssignments': ?pulumi.Input.mapOptionalInputValue<List<AccessControlRulesRoleAssignment>, List<Map<String, dynamic>>>(roleAssignments, (value) => pulumi.Input.encodeList<AccessControlRulesRoleAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roles': ?pulumi.Input.mapOptionalInputValue<List<AccessControlRulesRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<AccessControlRulesRole, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessControlRules.fromMap(Map<String, dynamic> map) {
    return AccessControlRules(
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessControlRulesIdentity>(guardedValue, (value) => AccessControlRulesIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privileges: (() { final guardedValue = map['privileges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessControlRulesPrivilege>(guardedValue, (value) => AccessControlRulesPrivilege.fromMap((value as Map).cast<String, dynamic>()))); })(),
      roleAssignments: (() { final guardedValue = map['roleAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessControlRulesRoleAssignment>(guardedValue, (value) => AccessControlRulesRoleAssignment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessControlRulesRole>(guardedValue, (value) => AccessControlRulesRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
