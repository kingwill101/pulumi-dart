// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegated_resource_response.dart';
import 'managed_cluster_identity_response_user_assigned_identities.dart';

/// Identity for the managed cluster.
class ManagedClusterIdentityResponse {
  /// The delegated identity resources assigned to this managed cluster. This can only be set by another Azure Resource Provider, and managed cluster only accept one delegated identity resource. Internal use only.
  final Map<String, DelegatedResourceResponse>? delegatedResources;
  /// The principal id of the system assigned identity which is used by master components.
  final String principalId;
  /// The tenant id of the system assigned identity which is used by master components.
  final String tenantId;
  /// The type of identity used for the managed cluster. For more information see [use managed identities in AKS](https://docs.microsoft.com/azure/aks/use-managed-identity).
  final String? type;
  /// The user identity associated with the managed cluster. This identity will be used in control plane. Only one user assigned identity is allowed. The keys must be ARM resource IDs in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final Map<String, ManagedClusterIdentityResponseUserAssignedIdentities>? userAssignedIdentities;

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
      'delegatedResources': ?delegatedResources == null ? null : pulumi.Input.encodeMapValues<DelegatedResourceResponse, Map<String, dynamic>>(delegatedResources!, (value) => value.toMap()),
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<ManagedClusterIdentityResponseUserAssignedIdentities, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ManagedClusterIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterIdentityResponse(
      delegatedResources: map['delegatedResources'] == null ? null : pulumi.Input.decodeMapValues<DelegatedResourceResponse>(map['delegatedResources'], (value) => DelegatedResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<ManagedClusterIdentityResponseUserAssignedIdentities>(map['userAssignedIdentities'], (value) => ManagedClusterIdentityResponseUserAssignedIdentities.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

