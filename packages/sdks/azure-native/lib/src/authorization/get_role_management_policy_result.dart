// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_properties_response.dart';
import 'principal_response.dart';
import 'role_management_policy_approval_rule_response.dart';

/// Result data returned by getRoleManagementPolicy.
class GetRoleManagementPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The role management policy description.
  final String? description;
  /// The role management policy display name.
  final String? displayName;
  /// The readonly computed rule applied to the policy.
  final List<RoleManagementPolicyApprovalRuleResponse> effectiveRules;
  /// The role management policy Id.
  final String id;
  /// The role management policy is default policy.
  final bool? isOrganizationDefault;
  /// The name of the entity last modified it
  final PrincipalResponse lastModifiedBy;
  /// The last modified date time.
  final String lastModifiedDateTime;
  /// The role management policy name.
  final String name;
  /// Additional properties of scope
  final PolicyPropertiesResponse policyProperties;
  /// The rule applied to the policy.
  final List<RoleManagementPolicyApprovalRuleResponse>? rules;
  /// The role management policy scope.
  final String? scope;
  /// The role management policy type.
  final String type;

  /// Creates a new [GetRoleManagementPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The role management policy description.
  /// [displayName] The role management policy display name.
  /// [effectiveRules] The readonly computed rule applied to the policy.
  /// [id] The role management policy Id.
  /// [isOrganizationDefault] The role management policy is default policy.
  /// [lastModifiedBy] The name of the entity last modified it
  /// [lastModifiedDateTime] The last modified date time.
  /// [name] The role management policy name.
  /// [policyProperties] Additional properties of scope
  /// [rules] The rule applied to the policy.
  /// [scope] The role management policy scope.
  /// [type] The role management policy type.
  GetRoleManagementPolicyResult({
    required this.azureApiVersion,
    this.description,
    this.displayName,
    required this.effectiveRules,
    required this.id,
    this.isOrganizationDefault,
    required this.lastModifiedBy,
    required this.lastModifiedDateTime,
    required this.name,
    required this.policyProperties,
    this.rules,
    this.scope,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveRules': pulumi.Input.encodeList<RoleManagementPolicyApprovalRuleResponse, Map<String, dynamic>>(effectiveRules, (value) => value.toMap()),
      'id': id,
      'isOrganizationDefault': ?isOrganizationDefault,
      'lastModifiedBy': lastModifiedBy.toMap(),
      'lastModifiedDateTime': lastModifiedDateTime,
      'name': name,
      'policyProperties': policyProperties.toMap(),
      'rules': ?rules == null ? null : pulumi.Input.encodeList<RoleManagementPolicyApprovalRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'scope': ?scope,
      'type': type,
    };
  }

  factory GetRoleManagementPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      effectiveRules: pulumi.Input.decodeList<RoleManagementPolicyApprovalRuleResponse>(map['effectiveRules'], (value) => RoleManagementPolicyApprovalRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      isOrganizationDefault: map['isOrganizationDefault'] == null ? null : map['isOrganizationDefault']! as bool,
      lastModifiedBy: PrincipalResponse.fromMap((map['lastModifiedBy'] as Map).cast<String, dynamic>()),
      lastModifiedDateTime: map['lastModifiedDateTime'] as String,
      name: map['name'] as String,
      policyProperties: PolicyPropertiesResponse.fromMap((map['policyProperties'] as Map).cast<String, dynamic>()),
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<RoleManagementPolicyApprovalRuleResponse>(map['rules']!, (value) => RoleManagementPolicyApprovalRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      scope: map['scope'] == null ? null : map['scope']! as String,
      type: map['type'] as String,
    );
  }
}

