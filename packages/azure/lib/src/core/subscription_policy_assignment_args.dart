// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_policy_assignment_identity.dart';
import 'subscription_policy_assignment_non_compliance_message.dart';
import 'subscription_policy_assignment_override.dart';
import 'subscription_policy_assignment_resource_selector.dart';

/// {@template pulumi_core_subscription_policy_assignment_subscription_policy_assignment_args_doc}
/// The set of arguments for SubscriptionPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_core_subscription_policy_assignment_subscription_policy_assignment_args_doc}
class SubscriptionPolicyAssignmentArgs {
  /// A description which should be used for this Policy Assignment.
  final pulumi.Input<String>? description;
  /// The Display Name for this Policy Assignment.
  final pulumi.Input<String>? displayName;
  /// Specifies if this Policy should be enforced or not? Defaults to `true`.
  final pulumi.Input<bool>? enforce;
  /// An `identity` block as defined below.
  ///
  /// > **Note:** The `location` field must also be specified when `identity` is specified.
  final pulumi.Input<SubscriptionPolicyAssignmentIdentity>? identity;
  /// The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String>? location;
  /// A JSON mapping of any Metadata for this Policy.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Policy Assignment. Changing this forces a new Policy Assignment to be created. Cannot exceed 64 characters in length.
  final pulumi.Input<String>? name;
  /// One or more `non_compliance_message` blocks as defined below.
  final pulumi.Input<List<SubscriptionPolicyAssignmentNonComplianceMessage>>? nonComplianceMessages;
  /// Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  final pulumi.Input<List<String>>? notScopes;
  /// One or more `overrides` blocks as defined below. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  final pulumi.Input<List<SubscriptionPolicyAssignmentOverride>>? overrides;
  /// A JSON mapping of any Parameters for this Policy.
  final pulumi.Input<String>? parameters;
  /// The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String> policyDefinitionId;
  /// One or more `resource_selectors` blocks as defined below to filter polices by resource properties.
  final pulumi.Input<List<SubscriptionPolicyAssignmentResourceSelector>>? resourceSelectors;
  /// The ID of the Subscription where this Policy Assignment should be created. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [SubscriptionPolicyAssignmentArgs].
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
  /// [resourceSelectors] One or more `resource_selectors` blocks as defined below to filter polices by resource properties.
  /// [subscriptionId] The ID of the Subscription where this Policy Assignment should be created. Changing this forces a new Policy Assignment to be created.
  SubscriptionPolicyAssignmentArgs({
    String? description,
    String? displayName,
    bool? enforce,
    SubscriptionPolicyAssignmentIdentity? identity,
    String? location,
    String? metadata,
    String? name,
    List<SubscriptionPolicyAssignmentNonComplianceMessage>? nonComplianceMessages,
    List<String>? notScopes,
    List<SubscriptionPolicyAssignmentOverride>? overrides,
    String? parameters,
    required String policyDefinitionId,
    List<SubscriptionPolicyAssignmentResourceSelector>? resourceSelectors,
    required String subscriptionId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enforce = pulumi.Input.asOptionalInput<bool>(enforce),
      identity = pulumi.Input.asOptionalInput<SubscriptionPolicyAssignmentIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      nonComplianceMessages = pulumi.Input.asOptionalInput<List<SubscriptionPolicyAssignmentNonComplianceMessage>>(nonComplianceMessages),
      notScopes = pulumi.Input.asOptionalInput<List<String>>(notScopes),
      overrides = pulumi.Input.asOptionalInput<List<SubscriptionPolicyAssignmentOverride>>(overrides),
      parameters = pulumi.Input.asOptionalInput<String>(parameters),
      policyDefinitionId = pulumi.Input.asInput<String>(policyDefinitionId),
      resourceSelectors = pulumi.Input.asOptionalInput<List<SubscriptionPolicyAssignmentResourceSelector>>(resourceSelectors),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'enforce': ?enforce,
      'identity': ?pulumi.Input.mapOptionalInputValue<SubscriptionPolicyAssignmentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'nonComplianceMessages': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionPolicyAssignmentNonComplianceMessage>, List<Map<String, dynamic>>>(nonComplianceMessages, (value) => pulumi.Input.encodeList<SubscriptionPolicyAssignmentNonComplianceMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notScopes': ?notScopes,
      'overrides': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionPolicyAssignmentOverride>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<SubscriptionPolicyAssignmentOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?parameters,
      'policyDefinitionId': policyDefinitionId,
      'resourceSelectors': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionPolicyAssignmentResourceSelector>, List<Map<String, dynamic>>>(resourceSelectors, (value) => pulumi.Input.encodeList<SubscriptionPolicyAssignmentResourceSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subscriptionId': subscriptionId,
    };
  }

  factory SubscriptionPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionPolicyAssignmentArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      enforce: map['enforce'] == null ? null : map['enforce'] as bool,
      identity: map['identity'] == null ? null : SubscriptionPolicyAssignmentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nonComplianceMessages: map['nonComplianceMessages'] == null ? null : pulumi.Input.decodeList<SubscriptionPolicyAssignmentNonComplianceMessage>(map['nonComplianceMessages'], (value) => SubscriptionPolicyAssignmentNonComplianceMessage.fromMap((value as Map).cast<String, dynamic>())),
      notScopes: map['notScopes'] == null ? null : (map['notScopes'] as List).cast<String>(),
      overrides: map['overrides'] == null ? null : pulumi.Input.decodeList<SubscriptionPolicyAssignmentOverride>(map['overrides'], (value) => SubscriptionPolicyAssignmentOverride.fromMap((value as Map).cast<String, dynamic>())),
      parameters: map['parameters'] == null ? null : map['parameters'] as String,
      policyDefinitionId: map['policyDefinitionId'] as String,
      resourceSelectors: map['resourceSelectors'] == null ? null : pulumi.Input.decodeList<SubscriptionPolicyAssignmentResourceSelector>(map['resourceSelectors'], (value) => SubscriptionPolicyAssignmentResourceSelector.fromMap((value as Map).cast<String, dynamic>())),
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}

