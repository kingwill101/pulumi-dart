// ignore_for_file: unused_element, unnecessary_cast

import 'storage_spaces_properties_error.dart';

/// Contains Provisioning errors
class StorageSpacesPropertiesProvisioningStatus {
  final StorageSpacesPropertiesError? error;
  final String? operationId;
  /// Phase represents the current phase of cluster actuation. E.g. Pending, Running, Terminating, Failed etc.
  final String? phase;
  final String? status;

  /// Creates a new [StorageSpacesPropertiesProvisioningStatus].
  /// [error] Optional.
  /// [operationId] Optional.
  /// [phase] Phase represents the current phase of cluster actuation. E.g. Pending, Running, Terminating, Failed etc.
  /// [status] Optional.
  StorageSpacesPropertiesProvisioningStatus({
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

  factory StorageSpacesPropertiesProvisioningStatus.fromMap(Map<String, dynamic> map) {
    return StorageSpacesPropertiesProvisioningStatus(
      error: map['error'] == null ? null : StorageSpacesPropertiesError.fromMap((map['error'] as Map).cast<String, dynamic>()),
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      phase: map['phase'] == null ? null : map['phase'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

