// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_pod_identity_exception_response.dart';
import 'managed_cluster_pod_identity_response.dart';

/// The pod identity profile of the Managed Cluster. See [use AAD pod identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity) for more details on pod identity integration.
class ManagedClusterPodIdentityProfileResponse {
  /// Whether pod identity is allowed to run on clusters with Kubenet networking. Running in Kubenet is disabled by default due to the security related nature of AAD Pod Identity and the risks of IP spoofing. See [using Kubenet network plugin with AAD Pod Identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity#using-kubenet-network-plugin-with-azure-active-directory-pod-managed-identities) for more information.
  final pulumi.Input<bool?>? allowNetworkPluginKubenet;
  /// Whether the pod identity addon is enabled.
  final pulumi.Input<bool?>? enabled;
  /// The pod identities to use in the cluster.
  final pulumi.Input<List<ManagedClusterPodIdentityResponse>?>? userAssignedIdentities;
  /// The pod identity exceptions to allow.
  final pulumi.Input<List<ManagedClusterPodIdentityExceptionResponse>?>? userAssignedIdentityExceptions;

  /// Creates a new [ManagedClusterPodIdentityProfileResponse].
  /// [allowNetworkPluginKubenet] Whether pod identity is allowed to run on clusters with Kubenet networking. Running in Kubenet is disabled by default due to the security related nature of AAD Pod Identity and the risks of IP spoofing. See [using Kubenet network plugin with AAD Pod Identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity#using-kubenet-network-plugin-with-azure-active-directory-pod-managed-identities) for more information.
  /// [enabled] Whether the pod identity addon is enabled.
  /// [userAssignedIdentities] The pod identities to use in the cluster.
  /// [userAssignedIdentityExceptions] The pod identity exceptions to allow.
  const ManagedClusterPodIdentityProfileResponse({
    this.allowNetworkPluginKubenet,
    this.enabled,
    this.userAssignedIdentities,
    this.userAssignedIdentityExceptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNetworkPluginKubenet': ?allowNetworkPluginKubenet,
      'enabled': ?enabled,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<List<ManagedClusterPodIdentityResponse>, List<Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeList<ManagedClusterPodIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userAssignedIdentityExceptions': ?pulumi.Input.mapOptionalInputValue<List<ManagedClusterPodIdentityExceptionResponse>, List<Map<String, dynamic>>>(userAssignedIdentityExceptions, (value) => pulumi.Input.encodeList<ManagedClusterPodIdentityExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedClusterPodIdentityProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPodIdentityProfileResponse(
      allowNetworkPluginKubenet: (() { final guardedValue = map['allowNetworkPluginKubenet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedClusterPodIdentityResponse>(guardedValue, (value) => ManagedClusterPodIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userAssignedIdentityExceptions: (() { final guardedValue = map['userAssignedIdentityExceptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedClusterPodIdentityExceptionResponse>(guardedValue, (value) => ManagedClusterPodIdentityExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
