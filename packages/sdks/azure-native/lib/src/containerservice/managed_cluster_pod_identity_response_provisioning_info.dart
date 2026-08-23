// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_pod_identity_provisioning_error_response.dart';

class ManagedClusterPodIdentityResponseProvisioningInfo {
  /// Pod identity assignment error (if any).
  final pulumi.Input<ManagedClusterPodIdentityProvisioningErrorResponse>? error;

  /// Creates a new [ManagedClusterPodIdentityResponseProvisioningInfo].
  /// [error] Pod identity assignment error (if any).
  const ManagedClusterPodIdentityResponseProvisioningInfo({
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?pulumi.Input.mapOptionalInputValue<ManagedClusterPodIdentityProvisioningErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
    };
  }

  factory ManagedClusterPodIdentityResponseProvisioningInfo.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPodIdentityResponseProvisioningInfo(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterPodIdentityProvisioningErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
