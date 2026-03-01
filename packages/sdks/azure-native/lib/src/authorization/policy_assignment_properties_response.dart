// ignore_for_file: unused_element, unnecessary_cast

import 'policy_assignment_properties_response_policy.dart';
import 'policy_assignment_properties_response_role_definition.dart';
import 'policy_assignment_properties_response_scope.dart';

/// Expanded info of resource scope, role definition and policy
class PolicyAssignmentPropertiesResponse {
  /// Details of the policy
  final PolicyAssignmentPropertiesResponsePolicy? policy;
  /// Details of role definition
  final PolicyAssignmentPropertiesResponseRoleDefinition? roleDefinition;
  /// Details of the resource scope
  final PolicyAssignmentPropertiesResponseScope? scope;

  /// Creates a new [PolicyAssignmentPropertiesResponse].
  /// [policy] Details of the policy
  /// [roleDefinition] Details of role definition
  /// [scope] Details of the resource scope
  PolicyAssignmentPropertiesResponse({
    this.policy,
    this.roleDefinition,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy == null ? null : policy!.toMap(),
      'roleDefinition': ?roleDefinition == null ? null : roleDefinition!.toMap(),
      'scope': ?scope == null ? null : scope!.toMap(),
    };
  }

  factory PolicyAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyAssignmentPropertiesResponse(
      policy: map['policy'] == null ? null : PolicyAssignmentPropertiesResponsePolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      roleDefinition: map['roleDefinition'] == null ? null : PolicyAssignmentPropertiesResponseRoleDefinition.fromMap((map['roleDefinition'] as Map).cast<String, dynamic>()),
      scope: map['scope'] == null ? null : PolicyAssignmentPropertiesResponseScope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
    );
  }
}

