// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_assignment_properties_response.dart';
import 'role_management_policy_approval_rule_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRoleManagementPolicyAssignment.
class GetRoleManagementPolicyAssignmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The readonly computed rule applied to the policy.
  final List<RoleManagementPolicyApprovalRuleResponse> effectiveRules;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Additional properties of scope, role definition and policy
  final PolicyAssignmentPropertiesResponse policyAssignmentProperties;
  /// The policy id role management policy assignment.
  final String? policyId;
  /// The role definition of management policy assignment.
  final String? roleDefinitionId;
  /// The role management policy scope.
  final String? scope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetRoleManagementPolicyAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [effectiveRules] The readonly computed rule applied to the policy.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [policyAssignmentProperties] Additional properties of scope, role definition and policy
  /// [policyId] The policy id role management policy assignment.
  /// [roleDefinitionId] The role definition of management policy assignment.
  /// [scope] The role management policy scope.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetRoleManagementPolicyAssignmentResult({
    required this.azureApiVersion,
    required this.effectiveRules,
    required this.id,
    required this.name,
    required this.policyAssignmentProperties,
    this.policyId,
    this.roleDefinitionId,
    this.scope,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'effectiveRules': pulumi.Input.encodeList<RoleManagementPolicyApprovalRuleResponse, Map<String, dynamic>>(effectiveRules, (value) => value.toMap()),
      'id': id,
      'name': name,
      'policyAssignmentProperties': policyAssignmentProperties.toMap(),
      'policyId': ?policyId,
      'roleDefinitionId': ?roleDefinitionId,
      'scope': ?scope,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetRoleManagementPolicyAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyAssignmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      effectiveRules: pulumi.Input.decodeList<RoleManagementPolicyApprovalRuleResponse>(map['effectiveRules']!, (value) => RoleManagementPolicyApprovalRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      policyAssignmentProperties: PolicyAssignmentPropertiesResponse.fromMap((map['policyAssignmentProperties']! as Map).cast<String, dynamic>()),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
