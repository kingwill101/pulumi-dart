// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegated_resource_response.dart';
import 'managed_cluster_identity_response_user_assigned_identities.dart';

/// Identity for the managed cluster.
class ManagedClusterIdentityResponse {
  /// The delegated identity resources assigned to this managed cluster. This can only be set by another Azure Resource Provider, and managed cluster only accept one delegated identity resource. Internal use only.
  final pulumi.Input<Map<String, DelegatedResourceResponse>>? delegatedResources;
  /// The principal id of the system assigned identity which is used by master components.
  final pulumi.Input<String> principalId;
  /// The tenant id of the system assigned identity which is used by master components.
  final pulumi.Input<String> tenantId;
  /// The type of identity used for the managed cluster. For more information see [use managed identities in AKS](https://docs.microsoft.com/azure/aks/use-managed-identity).
  final pulumi.Input<String>? type;
  /// The user identity associated with the managed cluster. This identity will be used in control plane. Only one user assigned identity is allowed. The keys must be ARM resource IDs in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<Map<String, ManagedClusterIdentityResponseUserAssignedIdentities>>? userAssignedIdentities;

  /// Creates a new [ManagedClusterIdentityResponse].
  /// [delegatedResources] The delegated identity resources assigned to this managed cluster. This can only be set by another Azure Resource Provider, and managed cluster only accept one delegated identity resource. Internal use only.
  /// [principalId] The principal id of the system assigned identity which is used by master components.
  /// [tenantId] The tenant id of the system assigned identity which is used by master components.
  /// [type] The type of identity used for the managed cluster. For more information see [use managed identities in AKS](https://docs.microsoft.com/azure/aks/use-managed-identity).
  /// [userAssignedIdentities] The user identity associated with the managed cluster. This identity will be used in control plane. Only one user assigned identity is allowed. The keys must be ARM resource IDs in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  ManagedClusterIdentityResponse({
    this.delegatedResources,
    required this.principalId,
    required this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedResources': ?pulumi.Input.mapOptionalInputValue<Map<String, DelegatedResourceResponse>, Map<String, Map<String, dynamic>>>(delegatedResources, (value) => pulumi.Input.encodeMapValues<DelegatedResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, ManagedClusterIdentityResponseUserAssignedIdentities>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<ManagedClusterIdentityResponseUserAssignedIdentities, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedClusterIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterIdentityResponse(
      delegatedResources: map['delegatedResources'] == null ? null : (pulumi.Input.decodeMapValues<DelegatedResourceResponse>(map['delegatedResources'], (value) => DelegatedResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<ManagedClusterIdentityResponseUserAssignedIdentities>(map['userAssignedIdentities'], (value) => ManagedClusterIdentityResponseUserAssignedIdentities.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

