// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_pod_identity.dart';
import 'managed_cluster_pod_identity_exception.dart';

/// The pod identity profile of the Managed Cluster. See [use AAD pod identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity) for more details on pod identity integration.
class ManagedClusterPodIdentityProfile {
  /// Whether pod identity is allowed to run on clusters with Kubenet networking. Running in Kubenet is disabled by default due to the security related nature of AAD Pod Identity and the risks of IP spoofing. See [using Kubenet network plugin with AAD Pod Identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity#using-kubenet-network-plugin-with-azure-active-directory-pod-managed-identities) for more information.
  final bool? allowNetworkPluginKubenet;
  /// Whether the pod identity addon is enabled.
  final bool? enabled;
  /// The pod identities to use in the cluster.
  final List<ManagedClusterPodIdentity>? userAssignedIdentities;
  /// The pod identity exceptions to allow.
  final List<ManagedClusterPodIdentityException>? userAssignedIdentityExceptions;

  /// Creates a new [ManagedClusterPodIdentityProfile].
  /// [allowNetworkPluginKubenet] Whether pod identity is allowed to run on clusters with Kubenet networking. Running in Kubenet is disabled by default due to the security related nature of AAD Pod Identity and the risks of IP spoofing. See [using Kubenet network plugin with AAD Pod Identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity#using-kubenet-network-plugin-with-azure-active-directory-pod-managed-identities) for more information.
  /// [enabled] Whether the pod identity addon is enabled.
  /// [userAssignedIdentities] The pod identities to use in the cluster.
  /// [userAssignedIdentityExceptions] The pod identity exceptions to allow.
  ManagedClusterPodIdentityProfile({
    this.allowNetworkPluginKubenet,
    this.enabled,
    this.userAssignedIdentities,
    this.userAssignedIdentityExceptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNetworkPluginKubenet': ?allowNetworkPluginKubenet,
      'enabled': ?enabled,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeList<ManagedClusterPodIdentity, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
      'userAssignedIdentityExceptions': ?userAssignedIdentityExceptions == null ? null : pulumi.Input.encodeList<ManagedClusterPodIdentityException, Map<String, dynamic>>(userAssignedIdentityExceptions!, (value) => value.toMap()),
    };
  }

  factory ManagedClusterPodIdentityProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPodIdentityProfile(
      allowNetworkPluginKubenet: map['allowNetworkPluginKubenet'] == null ? null : map['allowNetworkPluginKubenet'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeList<ManagedClusterPodIdentity>(map['userAssignedIdentities'], (value) => ManagedClusterPodIdentity.fromMap((value as Map).cast<String, dynamic>())),
      userAssignedIdentityExceptions: map['userAssignedIdentityExceptions'] == null ? null : pulumi.Input.decodeList<ManagedClusterPodIdentityException>(map['userAssignedIdentityExceptions'], (value) => ManagedClusterPodIdentityException.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

