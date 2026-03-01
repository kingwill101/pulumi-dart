// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_policy_assignment_identity.dart';
import 'resource_group_policy_assignment_non_compliance_message.dart';
import 'resource_group_policy_assignment_override.dart';
import 'resource_group_policy_assignment_resource_selector.dart';

/// {@template pulumi_core_resource_group_policy_assignment_resource_group_policy_assignment_args_doc}
/// The set of arguments for ResourceGroupPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_core_resource_group_policy_assignment_resource_group_policy_assignment_args_doc}
class ResourceGroupPolicyAssignmentArgs {
  /// A description which should be used for this Policy Assignment.
  final pulumi.Input<String>? description;
  /// The Display Name for this Policy Assignment.
  final pulumi.Input<String>? displayName;
  /// Specifies if this Policy should be enforced or not? Defaults to `true`.
  final pulumi.Input<bool>? enforce;
  /// An `identity` block as defined below.
  ///
  /// > **Note:** The `location` field must also be specified when `identity` is specified.
  final pulumi.Input<ResourceGroupPolicyAssignmentIdentity>? identity;
  /// The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String>? location;
  /// A JSON mapping of any Metadata for this Policy.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Policy Assignment. Changing this forces a new Policy Assignment to be created. Cannot exceed 64 characters in length.
  final pulumi.Input<String>? name;
  /// One or more `non_compliance_message` blocks as defined below.
  final pulumi.Input<List<ResourceGroupPolicyAssignmentNonComplianceMessage>>? nonComplianceMessages;
  /// Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  final pulumi.Input<List<String>>? notScopes;
  /// One or more `overrides` blocks as defined below. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  final pulumi.Input<List<ResourceGroupPolicyAssignmentOverride>>? overrides;
  /// A JSON mapping of any Parameters for this Policy.
  final pulumi.Input<String>? parameters;
  /// The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String> policyDefinitionId;
  /// The ID of the Resource Group where this Policy Assignment should be created. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String> resourceGroupId;
  /// One or more `resource_selectors` blocks as defined below to filter polices by resource properties.
  final pulumi.Input<List<ResourceGroupPolicyAssignmentResourceSelector>>? resourceSelectors;

  /// Creates a new [ResourceGroupPolicyAssignmentArgs].
  /// [description] A description which should be used for this Policy Assignment.
  /// [displayName] The Display Name for this Policy Assignment.
  /// [enforce] Specifies if this Policy should be enforced or not? Defaults to `true`.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  /// [metadata] A JSON mapping of any Metadata for this Policy.
  /// [name] The name which should be used for this Policy Assignment. Changing this forces a new Policy Assignment to be created. Cannot exceed 64 characters in length.
  /// [nonComplianceMessages] One or more `non_compliance_message` blocks as defined below.
  /// [notScopes] Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  /// [overrides] One or more `overrides` blocks as defined below. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  /// [parameters] A JSON mapping of any Parameters for this Policy.
  /// [policyDefinitionId] The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  /// [resourceGroupId] The ID of the Resource Group where this Policy Assignment should be created. Changing this forces a new Policy Assignment to be created.
  /// [resourceSelectors] One or more `resource_selectors` blocks as defined below to filter polices by resource properties.
  ResourceGroupPolicyAssignmentArgs({
    String? description,
    String? displayName,
    bool? enforce,
    ResourceGroupPolicyAssignmentIdentity? identity,
    String? location,
    String? metadata,
    String? name,
    List<ResourceGroupPolicyAssignmentNonComplianceMessage>? nonComplianceMessages,
    List<String>? notScopes,
    List<ResourceGroupPolicyAssignmentOverride>? overrides,
    String? parameters,
    required String policyDefinitionId,
    required String resourceGroupId,
    List<ResourceGroupPolicyAssignmentResourceSelector>? resourceSelectors,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enforce = pulumi.Input.asOptionalInput<bool>(enforce),
      identity = pulumi.Input.asOptionalInput<ResourceGroupPolicyAssignmentIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      nonComplianceMessages = pulumi.Input.asOptionalInput<List<ResourceGroupPolicyAssignmentNonComplianceMessage>>(nonComplianceMessages),
      notScopes = pulumi.Input.asOptionalInput<List<String>>(notScopes),
      overrides = pulumi.Input.asOptionalInput<List<ResourceGroupPolicyAssignmentOverride>>(overrides),
      parameters = pulumi.Input.asOptionalInput<String>(parameters),
      policyDefinitionId = pulumi.Input.asInput<String>(policyDefinitionId),
      resourceGroupId = pulumi.Input.asInput<String>(resourceGroupId),
      resourceSelectors = pulumi.Input.asOptionalInput<List<ResourceGroupPolicyAssignmentResourceSelector>>(resourceSelectors);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'enforce': ?enforce,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceGroupPolicyAssignmentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'nonComplianceMessages': ?pulumi.Input.mapOptionalInputValue<List<ResourceGroupPolicyAssignmentNonComplianceMessage>, List<Map<String, dynamic>>>(nonComplianceMessages, (value) => pulumi.Input.encodeList<ResourceGroupPolicyAssignmentNonComplianceMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notScopes': ?notScopes,
      'overrides': ?pulumi.Input.mapOptionalInputValue<List<ResourceGroupPolicyAssignmentOverride>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<ResourceGroupPolicyAssignmentOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?parameters,
      'policyDefinitionId': policyDefinitionId,
      'resourceGroupId': resourceGroupId,
      'resourceSelectors': ?pulumi.Input.mapOptionalInputValue<List<ResourceGroupPolicyAssignmentResourceSelector>, List<Map<String, dynamic>>>(resourceSelectors, (value) => pulumi.Input.encodeList<ResourceGroupPolicyAssignmentResourceSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceGroupPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGroupPolicyAssignmentArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      enforce: map['enforce'] == null ? null : map['enforce'] as bool,
      identity: map['identity'] == null ? null : ResourceGroupPolicyAssignmentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nonComplianceMessages: map['nonComplianceMessages'] == null ? null : pulumi.Input.decodeList<ResourceGroupPolicyAssignmentNonComplianceMessage>(map['nonComplianceMessages'], (value) => ResourceGroupPolicyAssignmentNonComplianceMessage.fromMap((value as Map).cast<String, dynamic>())),
      notScopes: map['notScopes'] == null ? null : (map['notScopes'] as List).cast<String>(),
      overrides: map['overrides'] == null ? null : pulumi.Input.decodeList<ResourceGroupPolicyAssignmentOverride>(map['overrides'], (value) => ResourceGroupPolicyAssignmentOverride.fromMap((value as Map).cast<String, dynamic>())),
      parameters: map['parameters'] == null ? null : map['parameters'] as String,
      policyDefinitionId: map['policyDefinitionId'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      resourceSelectors: map['resourceSelectors'] == null ? null : pulumi.Input.decodeList<ResourceGroupPolicyAssignmentResourceSelector>(map['resourceSelectors'], (value) => ResourceGroupPolicyAssignmentResourceSelector.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

