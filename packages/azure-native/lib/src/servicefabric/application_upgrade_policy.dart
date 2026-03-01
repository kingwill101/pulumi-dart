// ignore_for_file: unused_element, unnecessary_cast

import 'application_health_policy.dart';
import 'rolling_upgrade_monitoring_policy.dart';

/// Describes the policy for a monitored application upgrade.
class ApplicationUpgradePolicy {
  /// Defines a health policy used to evaluate the health of an application or one of its children entities.
  final ApplicationHealthPolicy? applicationHealthPolicy;
  /// If true, then processes are forcefully restarted during upgrade even when the code version has not changed (the upgrade only changes configuration or data).
  final bool? forceRestart;
  /// Duration in seconds, to wait before a stateless instance is closed, to allow the active requests to drain gracefully. This would be effective when the instance is closing during the application/cluster upgrade, only for those instances which have a non-zero delay duration configured in the service description.
  final double? instanceCloseDelayDuration;
  /// Determines whether the application should be recreated on update. If value=true, the rest of the upgrade policy parameters are not allowed.
  final bool? recreateApplication;
  /// The policy used for monitoring the application upgrade
  final RollingUpgradeMonitoringPolicy? rollingUpgradeMonitoringPolicy;
  /// The mode used to monitor health during a rolling upgrade. The values are Monitored, and UnmonitoredAuto.
  final String? upgradeMode;
  /// The maximum amount of time to block processing of an upgrade domain and prevent loss of availability when there are unexpected issues. When this timeout expires, processing of the upgrade domain will proceed regardless of availability loss issues. The timeout is reset at the start of each upgrade domain. Valid values are between 0 and 42949672925 inclusive. (unsigned 32-bit integer).
  final double? upgradeReplicaSetCheckTimeout;

  /// Creates a new [ApplicationUpgradePolicy].
  /// [applicationHealthPolicy] Defines a health policy used to evaluate the health of an application or one of its children entities.
  /// [forceRestart] If true, then processes are forcefully restarted during upgrade even when the code version has not changed (the upgrade only changes configuration or data).
  /// [instanceCloseDelayDuration] Duration in seconds, to wait before a stateless instance is closed, to allow the active requests to drain gracefully. This would be effective when the instance is closing during the application/cluster upgrade, only for those instances which have a non-zero delay duration configured in the service description.
  /// [recreateApplication] Determines whether the application should be recreated on update. If value=true, the rest of the upgrade policy parameters are not allowed.
  /// [rollingUpgradeMonitoringPolicy] The policy used for monitoring the application upgrade
  /// [upgradeMode] The mode used to monitor health during a rolling upgrade. The values are Monitored, and UnmonitoredAuto.
  /// [upgradeReplicaSetCheckTimeout] The maximum amount of time to block processing of an upgrade domain and prevent loss of availability when there are unexpected issues. When this timeout expires, processing of the upgrade domain will proceed regardless of availability loss issues. The timeout is reset at the start of each upgrade domain. Valid values are between 0 and 42949672925 inclusive. (unsigned 32-bit integer).
  ApplicationUpgradePolicy({
    this.applicationHealthPolicy,
    this.forceRestart,
    this.instanceCloseDelayDuration,
    this.recreateApplication,
    this.rollingUpgradeMonitoringPolicy,
    this.upgradeMode,
    this.upgradeReplicaSetCheckTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationHealthPolicy': ?applicationHealthPolicy == null ? null : applicationHealthPolicy!.toMap(),
      'forceRestart': ?forceRestart,
      'instanceCloseDelayDuration': ?instanceCloseDelayDuration,
      'recreateApplication': ?recreateApplication,
      'rollingUpgradeMonitoringPolicy': ?rollingUpgradeMonitoringPolicy == null ? null : rollingUpgradeMonitoringPolicy!.toMap(),
      'upgradeMode': ?upgradeMode,
      'upgradeReplicaSetCheckTimeout': ?upgradeReplicaSetCheckTimeout,
    };
  }

  factory ApplicationUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationUpgradePolicy(
      applicationHealthPolicy: map['applicationHealthPolicy'] == null ? null : ApplicationHealthPolicy.fromMap((map['applicationHealthPolicy'] as Map).cast<String, dynamic>()),
      forceRestart: map['forceRestart'] == null ? null : map['forceRestart'] as bool,
      instanceCloseDelayDuration: map['instanceCloseDelayDuration'] == null ? null : map['instanceCloseDelayDuration'] as double,
      recreateApplication: map['recreateApplication'] == null ? null : map['recreateApplication'] as bool,
      rollingUpgradeMonitoringPolicy: map['rollingUpgradeMonitoringPolicy'] == null ? null : RollingUpgradeMonitoringPolicy.fromMap((map['rollingUpgradeMonitoringPolicy'] as Map).cast<String, dynamic>()),
      upgradeMode: map['upgradeMode'] == null ? null : map['upgradeMode'] as String,
      upgradeReplicaSetCheckTimeout: map['upgradeReplicaSetCheckTimeout'] == null ? null : map['upgradeReplicaSetCheckTimeout'] as double,
    );
  }
}

