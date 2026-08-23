// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_deployment_configuration_alarms.dart';

class DaemonDeploymentConfiguration {
  /// Alarm configuration for deployment monitoring. See Alarms below.
  final pulumi.Input<DaemonDeploymentConfigurationAlarms>? alarms;
  /// Time in minutes to wait before considering a deployment successful. Valid values are between 0 and 1440. Defaults to `0`.
  final pulumi.Input<int>? bakeTimeInMinutes;
  /// Percentage of tasks to drain during deployment. Valid values are between 0.0 and 100.0.
  final pulumi.Input<double>? drainPercent;

  /// Creates a new [DaemonDeploymentConfiguration].
  /// [alarms] Alarm configuration for deployment monitoring. See Alarms below.
  /// [bakeTimeInMinutes] Time in minutes to wait before considering a deployment successful. Valid values are between 0 and 1440. Defaults to `0`.
  /// [drainPercent] Percentage of tasks to drain during deployment. Valid values are between 0.0 and 100.0.
  const DaemonDeploymentConfiguration({
    this.alarms,
    this.bakeTimeInMinutes,
    this.drainPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarms': ?pulumi.Input.mapOptionalInputValue<DaemonDeploymentConfigurationAlarms, Map<String, dynamic>>(alarms, (value) => value.toMap()),
      'bakeTimeInMinutes': ?bakeTimeInMinutes,
      'drainPercent': ?drainPercent,
    };
  }

  factory DaemonDeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return DaemonDeploymentConfiguration(
      alarms: (() { final guardedValue = map['alarms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonDeploymentConfigurationAlarms.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bakeTimeInMinutes: (() { final guardedValue = map['bakeTimeInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      drainPercent: (() { final guardedValue = map['drainPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
