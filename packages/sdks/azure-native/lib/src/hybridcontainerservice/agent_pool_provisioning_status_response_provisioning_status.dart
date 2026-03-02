// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_pool_provisioning_status_response_error.dart';

/// Contains Provisioning errors
class AgentPoolProvisioningStatusResponseProvisioningStatus {
  final pulumi.Input<AgentPoolProvisioningStatusResponseError>? error;
  final pulumi.Input<String>? operationId;
  /// Phase represents the current phase of cluster actuation. E.g. Pending, Running, Terminating, Failed etc.
  final pulumi.Input<String>? phase;
  final pulumi.Input<String>? status;

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
      'error': ?pulumi.Input.mapOptionalInputValue<AgentPoolProvisioningStatusResponseError, Map<String, dynamic>>(error, (value) => value.toMap()),
      'operationId': ?operationId,
      'phase': ?phase,
      'status': ?status,
    };
  }

  factory AgentPoolProvisioningStatusResponseProvisioningStatus.fromMap(Map<String, dynamic> map) {
    return AgentPoolProvisioningStatusResponseProvisioningStatus(
      error: map['error'] == null ? null : (AgentPoolProvisioningStatusResponseError.fromMap((map['error']! as Map).cast<String, dynamic>())).input(),
      operationId: map['operationId'] == null ? null : (map['operationId']! as String).input(),
      phase: map['phase'] == null ? null : (map['phase']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

