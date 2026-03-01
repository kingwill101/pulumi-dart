// ignore_for_file: unused_element, unnecessary_cast

import 'agent_pool_provisioning_status_response_error.dart';

/// Contains Provisioning errors
class AgentPoolProvisioningStatusResponseProvisioningStatus {
  final AgentPoolProvisioningStatusResponseError? error;
  final String? operationId;
  /// Phase represents the current phase of cluster actuation. E.g. Pending, Running, Terminating, Failed etc.
  final String? phase;
  final String? status;

  /// Creates a new [AgentPoolProvisioningStatusResponseProvisioningStatus].
  /// [error] Optional.
  /// [operationId] Optional.
  /// [phase] Phase represents the current phase of cluster actuation. E.g. Pending, Running, Terminating, Failed etc.
  /// [status] Optional.
  AgentPoolProvisioningStatusResponseProvisioningStatus({
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

  factory AgentPoolProvisioningStatusResponseProvisioningStatus.fromMap(Map<String, dynamic> map) {
    return AgentPoolProvisioningStatusResponseProvisioningStatus(
      error: map['error'] == null ? null : AgentPoolProvisioningStatusResponseError.fromMap((map['error'] as Map).cast<String, dynamic>()),
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      phase: map['phase'] == null ? null : map['phase'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

