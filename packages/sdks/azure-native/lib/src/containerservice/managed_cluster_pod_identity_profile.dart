// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_pod_identity.dart';
import 'managed_cluster_pod_identity_exception.dart';

/// The pod identity profile of the Managed Cluster. See [use AAD pod identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity) for more details on pod identity integration.
class ManagedClusterPodIdentityProfile {
  /// Whether pod identity is allowed to run on clusters with Kubenet networking. Running in Kubenet is disabled by default due to the security related nature of AAD Pod Identity and the risks of IP spoofing. See [using Kubenet network plugin with AAD Pod Identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity#using-kubenet-network-plugin-with-azure-active-directory-pod-managed-identities) for more information.
  final pulumi.Input<bool?>? allowNetworkPluginKubenet;
  /// Whether the pod identity addon is enabled.
  final pulumi.Input<bool?>? enabled;
  /// The pod identities to use in the cluster.
  final pulumi.Input<List<ManagedClusterPodIdentity>?>? userAssignedIdentities;
  /// The pod identity exceptions to allow.
  final pulumi.Input<List<ManagedClusterPodIdentityException>?>? userAssignedIdentityExceptions;

  /// Creates a new [ManagedClusterPodIdentityProfile].
  /// [allowNetworkPluginKubenet] Whether pod identity is allowed to run on clusters with Kubenet networking. Running in Kubenet is disabled by default due to the security related nature of AAD Pod Identity and the risks of IP spoofing. See [using Kubenet network plugin with AAD Pod Identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity#using-kubenet-network-plugin-with-azure-active-directory-pod-managed-identities) for more information.
  /// [enabled] Whether the pod identity addon is enabled.
  /// [userAssignedIdentities] The pod identities to use in the cluster.
  /// [userAssignedIdentityExceptions] The pod identity exceptions to allow.
  const ManagedClusterPodIdentityProfile({
    this.allowNetworkPluginKubenet,
    this.enabled,
    this.userAssignedIdentities,
    this.userAssignedIdentityExceptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNetworkPluginKubenet': ?allowNetworkPluginKubenet,
      'enabled': ?enabled,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<List<ManagedClusterPodIdentity>, List<Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeList<ManagedClusterPodIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userAssignedIdentityExceptions': ?pulumi.Input.mapOptionalInputValue<List<ManagedClusterPodIdentityException>, List<Map<String, dynamic>>>(userAssignedIdentityExceptions, (value) => pulumi.Input.encodeList<ManagedClusterPodIdentityException, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedClusterPodIdentityProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPodIdentityProfile(
      allowNetworkPluginKubenet: (() { final guardedValue = map['allowNetworkPluginKubenet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedClusterPodIdentity>(guardedValue, (value) => ManagedClusterPodIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userAssignedIdentityExceptions: (() { final guardedValue = map['userAssignedIdentityExceptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedClusterPodIdentityException>(guardedValue, (value) => ManagedClusterPodIdentityException.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
