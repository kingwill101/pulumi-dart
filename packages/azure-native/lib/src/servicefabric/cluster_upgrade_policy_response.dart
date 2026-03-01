// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_health_policy_response.dart';
import 'cluster_monitoring_policy_response.dart';
import 'cluster_upgrade_delta_health_policy_response.dart';

/// Describes the policy used when upgrading the cluster.
class ClusterUpgradePolicyResponse {
  /// The cluster delta health policy defines a health policy used to evaluate the health of the cluster during a cluster upgrade.
  final ClusterUpgradeDeltaHealthPolicyResponse? deltaHealthPolicy;
  /// If true, then processes are forcefully restarted during upgrade even when the code version has not changed (the upgrade only changes configuration or data).
  final bool? forceRestart;
  /// The cluster health policy defines a health policy used to evaluate the health of the cluster during a cluster upgrade.
  final ClusterHealthPolicyResponse? healthPolicy;
  /// The cluster monitoring policy describes the parameters for monitoring an upgrade in Monitored mode.
  final ClusterMonitoringPolicyResponse? monitoringPolicy;
  /// The maximum amount of time to block processing of an upgrade domain and prevent loss of availability when there are unexpected issues.
  /// When this timeout expires, processing of the upgrade domain will proceed regardless of availability loss issues.
  /// The timeout is reset at the start of each upgrade domain. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  /// This value must be between 00:00:00 and 49710.06:28:15 (unsigned 32 bit integer for seconds)
  final String? upgradeReplicaSetCheckTimeout;

  /// Creates a new [ClusterUpgradePolicyResponse].
  /// [deltaHealthPolicy] The cluster delta health policy defines a health policy used to evaluate the health of the cluster during a cluster upgrade.
  /// [forceRestart] If true, then processes are forcefully restarted during upgrade even when the code version has not changed (the upgrade only changes configuration or data).
  /// [healthPolicy] The cluster health policy defines a health policy used to evaluate the health of the cluster during a cluster upgrade.
  /// [monitoringPolicy] The cluster monitoring policy describes the parameters for monitoring an upgrade in Monitored mode.
  /// [upgradeReplicaSetCheckTimeout] The maximum amount of time to block processing of an upgrade domain and prevent loss of availability when there are unexpected issues.
  ClusterUpgradePolicyResponse({
    this.deltaHealthPolicy,
    this.forceRestart,
    this.healthPolicy,
    this.monitoringPolicy,
    this.upgradeReplicaSetCheckTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deltaHealthPolicy': ?deltaHealthPolicy == null ? null : deltaHealthPolicy!.toMap(),
      'forceRestart': ?forceRestart,
      'healthPolicy': ?healthPolicy == null ? null : healthPolicy!.toMap(),
      'monitoringPolicy': ?monitoringPolicy == null ? null : monitoringPolicy!.toMap(),
      'upgradeReplicaSetCheckTimeout': ?upgradeReplicaSetCheckTimeout,
    };
  }

  factory ClusterUpgradePolicyResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradePolicyResponse(
      deltaHealthPolicy: map['deltaHealthPolicy'] == null ? null : ClusterUpgradeDeltaHealthPolicyResponse.fromMap((map['deltaHealthPolicy'] as Map).cast<String, dynamic>()),
      forceRestart: map['forceRestart'] == null ? null : map['forceRestart'] as bool,
      healthPolicy: map['healthPolicy'] == null ? null : ClusterHealthPolicyResponse.fromMap((map['healthPolicy'] as Map).cast<String, dynamic>()),
      monitoringPolicy: map['monitoringPolicy'] == null ? null : ClusterMonitoringPolicyResponse.fromMap((map['monitoringPolicy'] as Map).cast<String, dynamic>()),
      upgradeReplicaSetCheckTimeout: map['upgradeReplicaSetCheckTimeout'] == null ? null : map['upgradeReplicaSetCheckTimeout'] as String,
    );
  }
}

