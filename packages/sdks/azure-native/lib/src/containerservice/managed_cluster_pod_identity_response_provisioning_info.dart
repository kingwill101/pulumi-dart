// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_pod_identity_provisioning_error_response.dart';

class ManagedClusterPodIdentityResponseProvisioningInfo {
  /// Pod identity assignment error (if any).
  final ManagedClusterPodIdentityProvisioningErrorResponse? error;

  /// Creates a new [ManagedClusterPodIdentityResponseProvisioningInfo].
  /// [error] Pod identity assignment error (if any).
  ManagedClusterPodIdentityResponseProvisioningInfo({
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error == null ? null : error!.toMap(),
    };
  }

  factory ManagedClusterPodIdentityResponseProvisioningInfo.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPodIdentityResponseProvisioningInfo(
      error: map['error'] == null ? null : ManagedClusterPodIdentityProvisioningErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
    );
  }
}

