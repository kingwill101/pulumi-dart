// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegated_resource.dart';
import 'resource_identity_type.dart';

/// Identity for the managed cluster.
class ManagedClusterIdentity {
  /// The delegated identity resources assigned to this managed cluster. This can only be set by another Azure Resource Provider, and managed cluster only accept one delegated identity resource. Internal use only.
  final pulumi.Input<Map<String, DelegatedResource>>? delegatedResources;
  /// The type of identity used for the managed cluster. For more information see [use managed identities in AKS](https://docs.microsoft.com/azure/aks/use-managed-identity).
  final pulumi.Input<ResourceIdentityType>? type;
  /// The user identity associated with the managed cluster. This identity will be used in control plane. Only one user assigned identity is allowed. The keys must be ARM resource IDs in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ManagedClusterIdentity].
  /// [delegatedResources] The delegated identity resources assigned to this managed cluster. This can only be set by another Azure Resource Provider, and managed cluster only accept one delegated identity resource. Internal use only.
  /// [type] The type of identity used for the managed cluster. For more information see [use managed identities in AKS](https://docs.microsoft.com/azure/aks/use-managed-identity).
  /// [userAssignedIdentities] The user identity associated with the managed cluster. This identity will be used in control plane. Only one user assigned identity is allowed. The keys must be ARM resource IDs in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  ManagedClusterIdentity({
    this.delegatedResources,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedResources': ?pulumi.Input.mapOptionalInputValue<Map<String, DelegatedResource>, Map<String, Map<String, dynamic>>>(delegatedResources, (value) => pulumi.Input.encodeMapValues<DelegatedResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceIdentityType, String>(type, (value) => value.value),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedClusterIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedClusterIdentity(
      delegatedResources: map['delegatedResources'] == null ? null : (pulumi.Input.decodeMapValues<DelegatedResource>(map['delegatedResources'], (value) => DelegatedResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (ResourceIdentityType.fromValue(map['type'] as String)).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : ((map['userAssignedIdentities'] as List).cast<String>()).input(),
    );
  }
}

