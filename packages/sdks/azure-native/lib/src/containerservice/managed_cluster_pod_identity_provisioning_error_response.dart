// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_pod_identity_provisioning_error_body_response.dart';

/// An error response from the pod identity provisioning.
class ManagedClusterPodIdentityProvisioningErrorResponse {
  /// Details about the error.
  final ManagedClusterPodIdentityProvisioningErrorBodyResponse? error;

  /// Creates a new [ManagedClusterPodIdentityProvisioningErrorResponse].
  /// [error] Details about the error.
  ManagedClusterPodIdentityProvisioningErrorResponse({
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error == null ? null : error!.toMap(),
    };
  }

  factory ManagedClusterPodIdentityProvisioningErrorResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPodIdentityProvisioningErrorResponse(
      error: map['error'] == null ? null : ManagedClusterPodIdentityProvisioningErrorBodyResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
    );
  }
}

