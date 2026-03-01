// ignore_for_file: unused_element, unnecessary_cast

import 'provisioned_clusters_common_properties_response_error.dart';

/// Contains Provisioning errors
class ProvisionedClustersCommonPropertiesResponseProvisioningStatus {
  final ProvisionedClustersCommonPropertiesResponseError? error;
  final String? operationId;
  /// Phase represents the current phase of cluster actuation. E.g. Pending, Running, Terminating, Failed etc.
  final String? phase;
  final String? status;

  /// Creates a new [ProvisionedClustersCommonPropertiesResponseProvisioningStatus].
  /// [error] Optional.
  /// [operationId] Optional.
  /// [phase] Phase represents the current phase of cluster actuation. E.g. Pending, Running, Terminating, Failed etc.
  /// [status] Optional.
  ProvisionedClustersCommonPropertiesResponseProvisioningStatus({
    this.error,
    this.operationId,
    this.phase,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error == null ? null : error!.toMap(),
      'operationId': ?operationId,
      'phase': ?phase,
      'status': ?status,
    };
  }

  factory ProvisionedClustersCommonPropertiesResponseProvisioningStatus.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersCommonPropertiesResponseProvisioningStatus(
      error: map['error'] == null ? null : ProvisionedClustersCommonPropertiesResponseError.fromMap((map['error'] as Map).cast<String, dynamic>()),
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      phase: map['phase'] == null ? null : map['phase'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

