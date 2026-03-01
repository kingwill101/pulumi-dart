// ignore_for_file: unused_element, unnecessary_cast

import 'agent_pool_provisioning_status_response_provisioning_status.dart';

/// HybridAKSNodePoolStatus defines the observed state of HybridAKSNodePool
class AgentPoolProvisioningStatusResponseStatus {
  /// ErrorMessage - Error messages during creation of cluster
  final String? errorMessage;
  /// Contains Provisioning errors
  final AgentPoolProvisioningStatusResponseProvisioningStatus? provisioningStatus;
  /// Total number of ready machines targeted by this deployment.
  final int? readyReplicas;
  /// Total number of non-terminated machines targeted by this deployment
  final int? replicas;

  /// Creates a new [AgentPoolProvisioningStatusResponseStatus].
  /// [errorMessage] ErrorMessage - Error messages during creation of cluster
  /// [provisioningStatus] Contains Provisioning errors
  /// [readyReplicas] Total number of ready machines targeted by this deployment.
  /// [replicas] Total number of non-terminated machines targeted by this deployment
  AgentPoolProvisioningStatusResponseStatus({
    this.errorMessage,
    this.provisioningStatus,
    this.readyReplicas,
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?provisioningStatus == null ? null : provisioningStatus!.toMap(),
      'readyReplicas': ?readyReplicas,
      'replicas': ?replicas,
    };
  }

  factory AgentPoolProvisioningStatusResponseStatus.fromMap(Map<String, dynamic> map) {
    return AgentPoolProvisioningStatusResponseStatus(
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      provisioningStatus: map['provisioningStatus'] == null ? null : AgentPoolProvisioningStatusResponseProvisioningStatus.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
      readyReplicas: map['readyReplicas'] == null ? null : map['readyReplicas'] as int,
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
    );
  }
}

