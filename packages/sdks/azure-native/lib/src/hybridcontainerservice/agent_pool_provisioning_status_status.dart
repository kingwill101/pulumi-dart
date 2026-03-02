// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_pool_provisioning_status_provisioning_status.dart';

/// HybridAKSNodePoolStatus defines the observed state of HybridAKSNodePool
class AgentPoolProvisioningStatusStatus {
  /// ErrorMessage - Error messages during creation of cluster
  final pulumi.Input<String>? errorMessage;
  /// Contains Provisioning errors
  final pulumi.Input<AgentPoolProvisioningStatusProvisioningStatus>? provisioningStatus;
  /// Total number of ready machines targeted by this deployment.
  final pulumi.Input<int>? readyReplicas;
  /// Total number of non-terminated machines targeted by this deployment
  final pulumi.Input<int>? replicas;

  /// Creates a new [AgentPoolProvisioningStatusStatus].
  /// [errorMessage] ErrorMessage - Error messages during creation of cluster
  /// [provisioningStatus] Contains Provisioning errors
  /// [readyReplicas] Total number of ready machines targeted by this deployment.
  /// [replicas] Total number of non-terminated machines targeted by this deployment
  AgentPoolProvisioningStatusStatus({
    this.errorMessage,
    this.provisioningStatus,
    this.readyReplicas,
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<AgentPoolProvisioningStatusProvisioningStatus, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
      'readyReplicas': ?readyReplicas,
      'replicas': ?replicas,
    };
  }

  factory AgentPoolProvisioningStatusStatus.fromMap(Map<String, dynamic> map) {
    return AgentPoolProvisioningStatusStatus(
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
      provisioningStatus: map['provisioningStatus'] == null ? null : (AgentPoolProvisioningStatusProvisioningStatus.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>())).input(),
      readyReplicas: map['readyReplicas'] == null ? null : (map['readyReplicas'] as int).input(),
      replicas: map['replicas'] == null ? null : (map['replicas'] as int).input(),
    );
  }
}

