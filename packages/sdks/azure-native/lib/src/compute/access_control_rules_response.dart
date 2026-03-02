// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_rules_identity_response.dart';
import 'access_control_rules_privilege_response.dart';
import 'access_control_rules_role_assignment_response.dart';
import 'access_control_rules_role_response.dart';

/// This is the Access Control Rules specification for an inVMAccessControlProfile version.
class AccessControlRulesResponse {
  /// A list of identities.
  final pulumi.Input<List<AccessControlRulesIdentityResponse>>? identities;
  /// A list of privileges.
  final pulumi.Input<List<AccessControlRulesPrivilegeResponse>>? privileges;
  /// A list of role assignments.
  final pulumi.Input<List<AccessControlRulesRoleAssignmentResponse>>? roleAssignments;
  /// A list of roles.
  final pulumi.Input<List<AccessControlRulesRoleResponse>>? roles;

  /// Creates a new [AccessControlRulesResponse].
  /// [identities] A list of identities.
  /// [privileges] A list of privileges.
  /// [roleAssignments] A list of role assignments.
  /// [roles] A list of roles.
  AccessControlRulesResponse({
    this.identities,
    this.privileges,
    this.roleAssignments,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': ?pulumi.Input.mapOptionalInputValue<List<AccessControlRulesIdentityResponse>, List<Map<String, dynamic>>>(identities, (value) => pulumi.Input.encodeList<AccessControlRulesIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privileges': ?pulumi.Input.mapOptionalInputValue<List<AccessControlRulesPrivilegeResponse>, List<Map<String, dynamic>>>(privileges, (value) => pulumi.Input.encodeList<AccessControlRulesPrivilegeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleAssignments': ?pulumi.Input.mapOptionalInputValue<List<AccessControlRulesRoleAssignmentResponse>, List<Map<String, dynamic>>>(roleAssignments, (value) => pulumi.Input.encodeList<AccessControlRulesRoleAssignmentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roles': ?pulumi.Input.mapOptionalInputValue<List<AccessControlRulesRoleResponse>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<AccessControlRulesRoleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessControlRulesResponse.fromMap(Map<String, dynamic> map) {
    return AccessControlRulesResponse(
      identities: map['identities'] == null ? null : (pulumi.Input.decodeList<AccessControlRulesIdentityResponse>(map['identities'], (value) => AccessControlRulesIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privileges: map['privileges'] == null ? null : (pulumi.Input.decodeList<AccessControlRulesPrivilegeResponse>(map['privileges'], (value) => AccessControlRulesPrivilegeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      roleAssignments: map['roleAssignments'] == null ? null : (pulumi.Input.decodeList<AccessControlRulesRoleAssignmentResponse>(map['roleAssignments'], (value) => AccessControlRulesRoleAssignmentResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      roles: map['roles'] == null ? null : (pulumi.Input.decodeList<AccessControlRulesRoleResponse>(map['roles'], (value) => AccessControlRulesRoleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

