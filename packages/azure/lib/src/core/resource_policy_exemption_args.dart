// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_resource_policy_exemption_resource_policy_exemption_args_doc}
/// The set of arguments for ResourcePolicyExemption.
/// {@endtemplate}
/// {@macro pulumi_core_resource_policy_exemption_resource_policy_exemption_args_doc}
class ResourcePolicyExemptionArgs {
  /// A description to use for this Policy Exemption.
  final pulumi.Input<String>? description;
  /// A friendly display name to use for this Policy Exemption.
  final pulumi.Input<String>? displayName;
  /// The category of this policy exemption. Possible values are `Waiver` and `Mitigated`.
  final pulumi.Input<String> exemptionCategory;
  /// The expiration date and time in UTC ISO 8601 format of this policy exemption.
  final pulumi.Input<String>? expiresOn;
  /// The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption.
  final pulumi.Input<String>? metadata;
  /// The name of the Policy Exemption. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Policy Assignment to be exempted at the specified Scope. Changing this forces a new resource to be created.
  final pulumi.Input<String> policyAssignmentId;
  /// The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  final pulumi.Input<List<String>>? policyDefinitionReferenceIds;
  /// The Resource ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceId;

  /// Creates a new [ResourcePolicyExemptionArgs].
  /// [description] A description to use for this Policy Exemption.
  /// [displayName] A friendly display name to use for this Policy Exemption.
  /// [exemptionCategory] The category of this policy exemption. Possible values are `Waiver` and `Mitigated`.
  /// [expiresOn] The expiration date and time in UTC ISO 8601 format of this policy exemption.
  /// [metadata] The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption.
  /// [name] The name of the Policy Exemption. Changing this forces a new resource to be created.
  /// [policyAssignmentId] The ID of the Policy Assignment to be exempted at the specified Scope. Changing this forces a new resource to be created.
  /// [policyDefinitionReferenceIds] The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  /// [resourceId] The Resource ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  ResourcePolicyExemptionArgs({
    String? description,
    String? displayName,
    required String exemptionCategory,
    String? expiresOn,
    String? metadata,
    String? name,
    required String policyAssignmentId,
    List<String>? policyDefinitionReferenceIds,
    required String resourceId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      exemptionCategory = pulumi.Input.asInput<String>(exemptionCategory),
      expiresOn = pulumi.Input.asOptionalInput<String>(expiresOn),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyAssignmentId = pulumi.Input.asInput<String>(policyAssignmentId),
      policyDefinitionReferenceIds = pulumi.Input.asOptionalInput<List<String>>(policyDefinitionReferenceIds),
      resourceId = pulumi.Input.asInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'exemptionCategory': exemptionCategory,
      'expiresOn': ?expiresOn,
      'metadata': ?metadata,
      'name': ?name,
      'policyAssignmentId': policyAssignmentId,
      'policyDefinitionReferenceIds': ?policyDefinitionReferenceIds,
      'resourceId': resourceId,
    };
  }

  factory ResourcePolicyExemptionArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyExemptionArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      exemptionCategory: map['exemptionCategory'] as String,
      expiresOn: map['expiresOn'] == null ? null : map['expiresOn'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policyAssignmentId: map['policyAssignmentId'] as String,
      policyDefinitionReferenceIds: map['policyDefinitionReferenceIds'] == null ? null : (map['policyDefinitionReferenceIds'] as List).cast<String>(),
      resourceId: map['resourceId'] as String,
    );
  }
}

