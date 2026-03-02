// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_clusters_common_properties_response_error.dart';

/// Contains Provisioning errors
class ProvisionedClustersCommonPropertiesResponseProvisioningStatus {
  final pulumi.Input<ProvisionedClustersCommonPropertiesResponseError>? error;
  final pulumi.Input<String>? operationId;
  /// Phase represents the current phase of cluster actuation. E.g. Pending, Running, Terminating, Failed etc.
  final pulumi.Input<String>? phase;
  final pulumi.Input<String>? status;

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
      'error': ?pulumi.Input.mapOptionalInputValue<ProvisionedClustersCommonPropertiesResponseError, Map<String, dynamic>>(error, (value) => value.toMap()),
      'operationId': ?operationId,
      'phase': ?phase,
      'status': ?status,
    };
  }

  factory ProvisionedClustersCommonPropertiesResponseProvisioningStatus.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersCommonPropertiesResponseProvisioningStatus(
      error: map['error'] == null ? null : (ProvisionedClustersCommonPropertiesResponseError.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      operationId: map['operationId'] == null ? null : (map['operationId'] as String).input(),
      phase: map['phase'] == null ? null : (map['phase'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

