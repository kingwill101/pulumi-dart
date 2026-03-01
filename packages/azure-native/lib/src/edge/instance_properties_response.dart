// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_status_response.dart';
import 'reconciliation_policy_properties_response.dart';

/// Instance Properties
class InstancePropertiesResponse {
  /// State of instance
  final String? activeState;
  /// Deployment timestamp of instance
  final double deploymentTimestampEpoch;
  /// Provisioning state of resource
  final String provisioningState;
  /// Reconciliation policy of instance
  final ReconciliationPolicyPropertiesResponse? reconciliationPolicy;
  /// Scope of instance
  final String? solutionScope;
  /// Solution version of instance
  final String solutionVersionId;
  /// Status of instance
  final DeploymentStatusResponse status;
  /// Target of instance
  final String targetId;

  /// Creates a new [InstancePropertiesResponse].
  /// [activeState] State of instance
  /// [deploymentTimestampEpoch] Deployment timestamp of instance
  /// [provisioningState] Provisioning state of resource
  /// [reconciliationPolicy] Reconciliation policy of instance
  /// [solutionScope] Scope of instance
  /// [solutionVersionId] Solution version of instance
  /// [status] Status of instance
  /// [targetId] Target of instance
  InstancePropertiesResponse({
    this.activeState,
    required this.deploymentTimestampEpoch,
    required this.provisioningState,
    this.reconciliationPolicy,
    this.solutionScope,
    required this.solutionVersionId,
    required this.status,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeState': ?activeState,
      'deploymentTimestampEpoch': deploymentTimestampEpoch,
      'provisioningState': provisioningState,
      'reconciliationPolicy': ?reconciliationPolicy == null ? null : reconciliationPolicy!.toMap(),
      'solutionScope': ?solutionScope,
      'solutionVersionId': solutionVersionId,
      'status': status.toMap(),
      'targetId': targetId,
    };
  }

  factory InstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesResponse(
      activeState: map['activeState'] == null ? null : map['activeState'] as String,
      deploymentTimestampEpoch: map['deploymentTimestampEpoch'] as double,
      provisioningState: map['provisioningState'] as String,
      reconciliationPolicy: map['reconciliationPolicy'] == null ? null : ReconciliationPolicyPropertiesResponse.fromMap((map['reconciliationPolicy'] as Map).cast<String, dynamic>()),
      solutionScope: map['solutionScope'] == null ? null : map['solutionScope'] as String,
      solutionVersionId: map['solutionVersionId'] as String,
      status: DeploymentStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      targetId: map['targetId'] as String,
    );
  }
}

