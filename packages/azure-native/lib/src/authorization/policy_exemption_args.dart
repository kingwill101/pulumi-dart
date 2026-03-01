// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_selector.dart';

/// {@template pulumi_authorization_policy_exemption_args_doc}
/// The set of arguments for PolicyExemption.
/// {@endtemplate}
/// {@macro pulumi_authorization_policy_exemption_args_doc}
class PolicyExemptionArgs {
  /// The option whether validate the exemption is at or under the assignment scope.
  final pulumi.Input<String>? assignmentScopeValidation;
  /// The description of the policy exemption.
  final pulumi.Input<String>? description;
  /// The display name of the policy exemption.
  final pulumi.Input<String>? displayName;
  /// The policy exemption category. Possible values are Waiver and Mitigated.
  final pulumi.Input<String> exemptionCategory;
  /// The expiration date and time (in UTC ISO 8601 format yyyy-MM-ddTHH:mm:ssZ) of the policy exemption.
  final pulumi.Input<String>? expiresOn;
  /// The policy exemption metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The ID of the policy assignment that is being exempted.
  final pulumi.Input<String> policyAssignmentId;
  /// The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  final pulumi.Input<List<String>>? policyDefinitionReferenceIds;
  /// The name of the policy exemption to delete.
  final pulumi.Input<String>? policyExemptionName;
  /// The resource selector list to filter policies by resource properties.
  final pulumi.Input<List<ResourceSelector>>? resourceSelectors;
  /// The scope of the policy exemption. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  final pulumi.Input<String> scope;

  /// Creates a new [PolicyExemptionArgs].
  /// [assignmentScopeValidation] The option whether validate the exemption is at or under the assignment scope.
  /// [description] The description of the policy exemption.
  /// [displayName] The display name of the policy exemption.
  /// [exemptionCategory] The policy exemption category. Possible values are Waiver and Mitigated.
  /// [expiresOn] The expiration date and time (in UTC ISO 8601 format yyyy-MM-ddTHH:mm:ssZ) of the policy exemption.
  /// [metadata] The policy exemption metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  /// [policyAssignmentId] The ID of the policy assignment that is being exempted.
  /// [policyDefinitionReferenceIds] The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  /// [policyExemptionName] The name of the policy exemption to delete.
  /// [resourceSelectors] The resource selector list to filter policies by resource properties.
  /// [scope] The scope of the policy exemption. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  PolicyExemptionArgs({
    String? assignmentScopeValidation,
    String? description,
    String? displayName,
    required String exemptionCategory,
    String? expiresOn,
    dynamic metadata,
    required String policyAssignmentId,
    List<String>? policyDefinitionReferenceIds,
    String? policyExemptionName,
    List<ResourceSelector>? resourceSelectors,
    required String scope,
  }) :
      assignmentScopeValidation = pulumi.Input.asOptionalInput<String>(assignmentScopeValidation),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      exemptionCategory = pulumi.Input.asInput<String>(exemptionCategory),
      expiresOn = pulumi.Input.asOptionalInput<String>(expiresOn),
      metadata = pulumi.Input.asOptionalInput<dynamic>(metadata),
      policyAssignmentId = pulumi.Input.asInput<String>(policyAssignmentId),
      policyDefinitionReferenceIds = pulumi.Input.asOptionalInput<List<String>>(policyDefinitionReferenceIds),
      policyExemptionName = pulumi.Input.asOptionalInput<String>(policyExemptionName),
      resourceSelectors = pulumi.Input.asOptionalInput<List<ResourceSelector>>(resourceSelectors),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentScopeValidation': ?assignmentScopeValidation,
      'description': ?description,
      'displayName': ?displayName,
      'exemptionCategory': exemptionCategory,
      'expiresOn': ?expiresOn,
      'metadata': ?metadata,
      'policyAssignmentId': policyAssignmentId,
      'policyDefinitionReferenceIds': ?policyDefinitionReferenceIds,
      'policyExemptionName': ?policyExemptionName,
      'resourceSelectors': ?pulumi.Input.mapOptionalInputValue<List<ResourceSelector>, List<Map<String, dynamic>>>(resourceSelectors, (value) => pulumi.Input.encodeList<ResourceSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': scope,
    };
  }

  factory PolicyExemptionArgs.fromMap(Map<String, dynamic> map) {
    return PolicyExemptionArgs(
      assignmentScopeValidation: map['assignmentScopeValidation'] == null ? null : map['assignmentScopeValidation'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      exemptionCategory: map['exemptionCategory'] as String,
      expiresOn: map['expiresOn'] == null ? null : map['expiresOn'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      policyAssignmentId: map['policyAssignmentId'] as String,
      policyDefinitionReferenceIds: map['policyDefinitionReferenceIds'] == null ? null : (map['policyDefinitionReferenceIds'] as List).cast<String>(),
      policyExemptionName: map['policyExemptionName'] == null ? null : map['policyExemptionName'] as String,
      resourceSelectors: map['resourceSelectors'] == null ? null : pulumi.Input.decodeList<ResourceSelector>(map['resourceSelectors'], (value) => ResourceSelector.fromMap((value as Map).cast<String, dynamic>())),
      scope: map['scope'] as String,
    );
  }
}

