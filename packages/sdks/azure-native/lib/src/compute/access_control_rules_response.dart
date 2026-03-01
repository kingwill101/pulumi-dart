// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_rules_identity_response.dart';
import 'access_control_rules_privilege_response.dart';
import 'access_control_rules_role_assignment_response.dart';
import 'access_control_rules_role_response.dart';

/// This is the Access Control Rules specification for an inVMAccessControlProfile version.
class AccessControlRulesResponse {
  /// A list of identities.
  final List<AccessControlRulesIdentityResponse>? identities;
  /// A list of privileges.
  final List<AccessControlRulesPrivilegeResponse>? privileges;
  /// A list of role assignments.
  final List<AccessControlRulesRoleAssignmentResponse>? roleAssignments;
  /// A list of roles.
  final List<AccessControlRulesRoleResponse>? roles;

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
      'identities': ?identities == null ? null : pulumi.Input.encodeList<AccessControlRulesIdentityResponse, Map<String, dynamic>>(identities!, (value) => value.toMap()),
      'privileges': ?privileges == null ? null : pulumi.Input.encodeList<AccessControlRulesPrivilegeResponse, Map<String, dynamic>>(privileges!, (value) => value.toMap()),
      'roleAssignments': ?roleAssignments == null ? null : pulumi.Input.encodeList<AccessControlRulesRoleAssignmentResponse, Map<String, dynamic>>(roleAssignments!, (value) => value.toMap()),
      'roles': ?roles == null ? null : pulumi.Input.encodeList<AccessControlRulesRoleResponse, Map<String, dynamic>>(roles!, (value) => value.toMap()),
    };
  }

  factory AccessControlRulesResponse.fromMap(Map<String, dynamic> map) {
    return AccessControlRulesResponse(
      identities: map['identities'] == null ? null : pulumi.Input.decodeList<AccessControlRulesIdentityResponse>(map['identities'], (value) => AccessControlRulesIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
      privileges: map['privileges'] == null ? null : pulumi.Input.decodeList<AccessControlRulesPrivilegeResponse>(map['privileges'], (value) => AccessControlRulesPrivilegeResponse.fromMap((value as Map).cast<String, dynamic>())),
      roleAssignments: map['roleAssignments'] == null ? null : pulumi.Input.decodeList<AccessControlRulesRoleAssignmentResponse>(map['roleAssignments'], (value) => AccessControlRulesRoleAssignmentResponse.fromMap((value as Map).cast<String, dynamic>())),
      roles: map['roles'] == null ? null : pulumi.Input.decodeList<AccessControlRulesRoleResponse>(map['roles'], (value) => AccessControlRulesRoleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

