// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_rules_identity.dart';
import 'access_control_rules_privilege.dart';
import 'access_control_rules_role.dart';
import 'access_control_rules_role_assignment.dart';

/// This is the Access Control Rules specification for an inVMAccessControlProfile version.
class AccessControlRules {
  /// A list of identities.
  final List<AccessControlRulesIdentity>? identities;
  /// A list of privileges.
  final List<AccessControlRulesPrivilege>? privileges;
  /// A list of role assignments.
  final List<AccessControlRulesRoleAssignment>? roleAssignments;
  /// A list of roles.
  final List<AccessControlRulesRole>? roles;

  /// Creates a new [AccessControlRules].
  /// [identities] A list of identities.
  /// [privileges] A list of privileges.
  /// [roleAssignments] A list of role assignments.
  /// [roles] A list of roles.
  AccessControlRules({
    this.identities,
    this.privileges,
    this.roleAssignments,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': ?identities == null ? null : pulumi.Input.encodeList<AccessControlRulesIdentity, Map<String, dynamic>>(identities!, (value) => value.toMap()),
      'privileges': ?privileges == null ? null : pulumi.Input.encodeList<AccessControlRulesPrivilege, Map<String, dynamic>>(privileges!, (value) => value.toMap()),
      'roleAssignments': ?roleAssignments == null ? null : pulumi.Input.encodeList<AccessControlRulesRoleAssignment, Map<String, dynamic>>(roleAssignments!, (value) => value.toMap()),
      'roles': ?roles == null ? null : pulumi.Input.encodeList<AccessControlRulesRole, Map<String, dynamic>>(roles!, (value) => value.toMap()),
    };
  }

  factory AccessControlRules.fromMap(Map<String, dynamic> map) {
    return AccessControlRules(
      identities: map['identities'] == null ? null : pulumi.Input.decodeList<AccessControlRulesIdentity>(map['identities'], (value) => AccessControlRulesIdentity.fromMap((value as Map).cast<String, dynamic>())),
      privileges: map['privileges'] == null ? null : pulumi.Input.decodeList<AccessControlRulesPrivilege>(map['privileges'], (value) => AccessControlRulesPrivilege.fromMap((value as Map).cast<String, dynamic>())),
      roleAssignments: map['roleAssignments'] == null ? null : pulumi.Input.decodeList<AccessControlRulesRoleAssignment>(map['roleAssignments'], (value) => AccessControlRulesRoleAssignment.fromMap((value as Map).cast<String, dynamic>())),
      roles: map['roles'] == null ? null : pulumi.Input.decodeList<AccessControlRulesRole>(map['roles'], (value) => AccessControlRulesRole.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

