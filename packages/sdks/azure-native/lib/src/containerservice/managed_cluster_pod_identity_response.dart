// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_pod_identity_response_provisioning_info.dart';
import 'user_assigned_identity_managed_cluster_response.dart';

/// Details about the pod identity assigned to the Managed Cluster.
class ManagedClusterPodIdentityResponse {
  /// The binding selector to use for the AzureIdentityBinding resource.
  final pulumi.Input<String>? bindingSelector;
  /// The user assigned identity details.
  final pulumi.Input<UserAssignedIdentityManagedClusterResponse> identity;
  /// The name of the pod identity.
  final pulumi.Input<String> name;
  /// The namespace of the pod identity.
  final pulumi.Input<String> namespace;
  final pulumi.Input<ManagedClusterPodIdentityResponseProvisioningInfo> provisioningInfo;
  /// The current provisioning state of the pod identity.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ManagedClusterPodIdentityResponse].
  /// [bindingSelector] The binding selector to use for the AzureIdentityBinding resource.
  /// [identity] The user assigned identity details.
  /// [name] The name of the pod identity.
  /// [namespace] The namespace of the pod identity.
  /// [provisioningInfo] Required.
  /// [provisioningState] The current provisioning state of the pod identity.
  const ManagedClusterPodIdentityResponse({
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
      'identity': pulumi.Input.mapInputValue<UserAssignedIdentityManagedClusterResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'name': name,
      'namespace': namespace,
      'provisioningInfo': pulumi.Input.mapInputValue<ManagedClusterPodIdentityResponseProvisioningInfo, Map<String, dynamic>>(provisioningInfo, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ManagedClusterPodIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPodIdentityResponse(
      bindingSelector: (() { final guardedValue = map['bindingSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: pulumi.Input.fromValue(UserAssignedIdentityManagedClusterResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      provisioningInfo: pulumi.Input.fromValue(ManagedClusterPodIdentityResponseProvisioningInfo.fromMap((map['provisioningInfo']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
