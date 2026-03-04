// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_assignment_properties_response_policy.dart';
import 'policy_assignment_properties_response_role_definition.dart';
import 'policy_assignment_properties_response_scope.dart';

/// Expanded info of resource scope, role definition and policy
class PolicyAssignmentPropertiesResponse {
  /// Details of the policy
  final pulumi.Input<PolicyAssignmentPropertiesResponsePolicy>? policy;

  /// Details of role definition
  final pulumi.Input<PolicyAssignmentPropertiesResponseRoleDefinition>?
  roleDefinition;

  /// Details of the resource scope
  final pulumi.Input<PolicyAssignmentPropertiesResponseScope>? scope;

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
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyAssignmentPropertiesResponsePolicy,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'roleDefinition':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyAssignmentPropertiesResponseRoleDefinition,
            Map<String, dynamic>
          >(roleDefinition, (value) => value.toMap()),
      'scope':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyAssignmentPropertiesResponseScope,
            Map<String, dynamic>
          >(scope, (value) => value.toMap()),
    };
  }

  factory PolicyAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyAssignmentPropertiesResponse(
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyAssignmentPropertiesResponsePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      roleDefinition: (() {
        final guardedValue = map['roleDefinition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyAssignmentPropertiesResponseRoleDefinition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyAssignmentPropertiesResponseScope.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
