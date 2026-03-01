// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_pod_identity_response_provisioning_info.dart';
import 'user_assigned_identity_response.dart';

/// Details about the pod identity assigned to the Managed Cluster.
class ManagedClusterPodIdentityResponse {
  /// The binding selector to use for the AzureIdentityBinding resource.
  final String? bindingSelector;
  /// The user assigned identity details.
  final UserAssignedIdentityResponse identity;
  /// The name of the pod identity.
  final String name;
  /// The namespace of the pod identity.
  final String namespace;
  final ManagedClusterPodIdentityResponseProvisioningInfo provisioningInfo;
  /// The current provisioning state of the pod identity.
  final String provisioningState;

  /// Creates a new [ManagedClusterPodIdentityResponse].
  /// [bindingSelector] The binding selector to use for the AzureIdentityBinding resource.
  /// [identity] The user assigned identity details.
  /// [name] The name of the pod identity.
  /// [namespace] The namespace of the pod identity.
  /// [provisioningInfo] Required.
  /// [provisioningState] The current provisioning state of the pod identity.
  ManagedClusterPodIdentityResponse({
    this.bindingSelector,
    required this.identity,
    required this.name,
    required this.namespace,
    required this.provisioningInfo,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingSelector': ?bindingSelector,
      'identity': identity.toMap(),
      'name': name,
      'namespace': namespace,
      'provisioningInfo': provisioningInfo.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory ManagedClusterPodIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPodIdentityResponse(
      bindingSelector: map['bindingSelector'] == null ? null : map['bindingSelector'] as String,
      identity: UserAssignedIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      provisioningInfo: ManagedClusterPodIdentityResponseProvisioningInfo.fromMap((map['provisioningInfo'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

