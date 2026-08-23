// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_assignment_properties_policy_response.dart';
import 'policy_assignment_properties_role_definition_response.dart';
import 'policy_assignment_properties_scope_response.dart';

/// Expanded info of resource scope, role definition and policy
class PolicyAssignmentPropertiesResponse {
  /// Details of the policy
  final pulumi.Input<PolicyAssignmentPropertiesPolicyResponse>? policy;
  /// Details of role definition
  final pulumi.Input<PolicyAssignmentPropertiesRoleDefinitionResponse>? roleDefinition;
  /// Details of the resource scope
  final pulumi.Input<PolicyAssignmentPropertiesScopeResponse>? scope;

  /// Creates a new [PolicyAssignmentPropertiesResponse].
  /// [policy] Details of the policy
  /// [roleDefinition] Details of role definition
  /// [scope] Details of the resource scope
  const PolicyAssignmentPropertiesResponse({
    this.policy,
    this.roleDefinition,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?pulumi.Input.mapOptionalInputValue<PolicyAssignmentPropertiesPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'roleDefinition': ?pulumi.Input.mapOptionalInputValue<PolicyAssignmentPropertiesRoleDefinitionResponse, Map<String, dynamic>>(roleDefinition, (value) => value.toMap()),
      'scope': ?pulumi.Input.mapOptionalInputValue<PolicyAssignmentPropertiesScopeResponse, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory PolicyAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyAssignmentPropertiesResponse(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyAssignmentPropertiesPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleDefinition: (() { final guardedValue = map['roleDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyAssignmentPropertiesRoleDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyAssignmentPropertiesScopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
