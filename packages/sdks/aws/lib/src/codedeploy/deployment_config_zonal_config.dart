// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_config_zonal_config_minimum_healthy_hosts_per_zone.dart';

class DeploymentConfigZonalConfig {
  /// The period of time, in seconds, that CodeDeploy must wait after completing a deployment to the first Availability Zone. CodeDeploy will wait this amount of time before starting a deployment to the second Availability Zone. If you don't specify a value for `first_zone_monitor_duration_in_seconds`, then CodeDeploy uses the `monitor_duration_in_seconds` value for the first Availability Zone.
  final pulumi.Input<int>? firstZoneMonitorDurationInSeconds;

  /// The number or percentage of instances that must remain available per Availability Zone during a deployment. If you don't specify a value under `minimum_healthy_hosts_per_zone`, then CodeDeploy uses a default value of 0 percent. This block is more documented below.
  final pulumi.Input<DeploymentConfigZonalConfigMinimumHealthyHostsPerZone>?
  minimumHealthyHostsPerZone;

  /// The period of time, in seconds, that CodeDeploy must wait after completing a deployment to an Availability Zone. CodeDeploy will wait this amount of time before starting a deployment to the next Availability Zone. If you don't specify a `monitor_duration_in_seconds`, CodeDeploy starts deploying to the next Availability Zone immediately.
  final pulumi.Input<int>? monitorDurationInSeconds;

  /// Creates a new [DeploymentConfigZonalConfig].
  /// [firstZoneMonitorDurationInSeconds] The period of time, in seconds, that CodeDeploy must wait after completing a deployment to the first Availability Zone. CodeDeploy will wait this amount of time before starting a deployment to the second Availability Zone. If you don't specify a value for `first_zone_monitor_duration_in_seconds`, then CodeDeploy uses the `monitor_duration_in_seconds` value for the first Availability Zone.
  /// [minimumHealthyHostsPerZone] The number or percentage of instances that must remain available per Availability Zone during a deployment. If you don't specify a value under `minimum_healthy_hosts_per_zone`, then CodeDeploy uses a default value of 0 percent. This block is more documented below.
  /// [monitorDurationInSeconds] The period of time, in seconds, that CodeDeploy must wait after completing a deployment to an Availability Zone. CodeDeploy will wait this amount of time before starting a deployment to the next Availability Zone. If you don't specify a `monitor_duration_in_seconds`, CodeDeploy starts deploying to the next Availability Zone immediately.
  DeploymentConfigZonalConfig({
    this.firstZoneMonitorDurationInSeconds,
    this.minimumHealthyHostsPerZone,
    this.monitorDurationInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstZoneMonitorDurationInSeconds': ?firstZoneMonitorDurationInSeconds,
      'minimumHealthyHostsPerZone':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentConfigZonalConfigMinimumHealthyHostsPerZone,
            Map<String, dynamic>
          >(minimumHealthyHostsPerZone, (value) => value.toMap()),
      'monitorDurationInSeconds': ?monitorDurationInSeconds,
    };
  }

  factory DeploymentConfigZonalConfig.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigZonalConfig(
      firstZoneMonitorDurationInSeconds: (() {
        final guardedValue = map['firstZoneMonitorDurationInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumHealthyHostsPerZone: (() {
        final guardedValue = map['minimumHealthyHostsPerZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentConfigZonalConfigMinimumHealthyHostsPerZone.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      monitorDurationInSeconds: (() {
        final guardedValue = map['monitorDurationInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
