// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_pod_identity_provisioning_error_body_response.dart';

/// An error response from the pod identity provisioning.
class ManagedClusterPodIdentityProvisioningErrorResponse {
  /// Details about the error.
  final pulumi.Input<ManagedClusterPodIdentityProvisioningErrorBodyResponse>?
  error;

  /// Creates a new [ManagedClusterPodIdentityProvisioningErrorResponse].
  /// [error] Details about the error.
  ManagedClusterPodIdentityProvisioningErrorResponse({this.error});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedClusterPodIdentityProvisioningErrorBodyResponse,
            Map<String, dynamic>
          >(error, (value) => value.toMap()),
    };
  }

  factory ManagedClusterPodIdentityProvisioningErrorResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedClusterPodIdentityProvisioningErrorResponse(
      error: (() {
        final guardedValue = map['error'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedClusterPodIdentityProvisioningErrorBodyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
