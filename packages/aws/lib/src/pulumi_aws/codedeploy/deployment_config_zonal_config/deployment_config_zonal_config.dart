// ignore_for_file: unused_element, unnecessary_cast

import '../deployment_config_zonal_config_minimum_healthy_hosts_per_zone/deployment_config_zonal_config_minimum_healthy_hosts_per_zone.dart';

class DeploymentConfigZonalConfig {
  /// The period of time, in seconds, that CodeDeploy must wait after completing a deployment to the first Availability Zone. CodeDeploy will wait this amount of time before starting a deployment to the second Availability Zone. If you don't specify a value for <span pulumi-lang-nodejs="`firstZoneMonitorDurationInSeconds`" pulumi-lang-dotnet="`FirstZoneMonitorDurationInSeconds`" pulumi-lang-go="`firstZoneMonitorDurationInSeconds`" pulumi-lang-python="`first_zone_monitor_duration_in_seconds`" pulumi-lang-yaml="`firstZoneMonitorDurationInSeconds`" pulumi-lang-java="`firstZoneMonitorDurationInSeconds`">`first_zone_monitor_duration_in_seconds`</span>, then CodeDeploy uses the <span pulumi-lang-nodejs="`monitorDurationInSeconds`" pulumi-lang-dotnet="`MonitorDurationInSeconds`" pulumi-lang-go="`monitorDurationInSeconds`" pulumi-lang-python="`monitor_duration_in_seconds`" pulumi-lang-yaml="`monitorDurationInSeconds`" pulumi-lang-java="`monitorDurationInSeconds`">`monitor_duration_in_seconds`</span> value for the first Availability Zone.
  final int? firstZoneMonitorDurationInSeconds;

  /// The number or percentage of instances that must remain available per Availability Zone during a deployment. If you don't specify a value under <span pulumi-lang-nodejs="`minimumHealthyHostsPerZone`" pulumi-lang-dotnet="`MinimumHealthyHostsPerZone`" pulumi-lang-go="`minimumHealthyHostsPerZone`" pulumi-lang-python="`minimum_healthy_hosts_per_zone`" pulumi-lang-yaml="`minimumHealthyHostsPerZone`" pulumi-lang-java="`minimumHealthyHostsPerZone`">`minimum_healthy_hosts_per_zone`</span>, then CodeDeploy uses a default value of 0 percent. This block is more documented below.
  final DeploymentConfigZonalConfigMinimumHealthyHostsPerZone?
      minimumHealthyHostsPerZone;

  /// The period of time, in seconds, that CodeDeploy must wait after completing a deployment to an Availability Zone. CodeDeploy will wait this amount of time before starting a deployment to the next Availability Zone. If you don't specify a <span pulumi-lang-nodejs="`monitorDurationInSeconds`" pulumi-lang-dotnet="`MonitorDurationInSeconds`" pulumi-lang-go="`monitorDurationInSeconds`" pulumi-lang-python="`monitor_duration_in_seconds`" pulumi-lang-yaml="`monitorDurationInSeconds`" pulumi-lang-java="`monitorDurationInSeconds`">`monitor_duration_in_seconds`</span>, CodeDeploy starts deploying to the next Availability Zone immediately.
  final int? monitorDurationInSeconds;

  DeploymentConfigZonalConfig({
    this.firstZoneMonitorDurationInSeconds,
    this.minimumHealthyHostsPerZone,
    this.monitorDurationInSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final firstZoneMonitorDurationInSecondsValue =
        firstZoneMonitorDurationInSeconds;
    if (firstZoneMonitorDurationInSecondsValue != null) {
      map['firstZoneMonitorDurationInSeconds'] =
          firstZoneMonitorDurationInSecondsValue;
    }
    final minimumHealthyHostsPerZoneValue = minimumHealthyHostsPerZone;
    if (minimumHealthyHostsPerZoneValue != null) {
      map['minimumHealthyHostsPerZone'] =
          minimumHealthyHostsPerZoneValue.toMap();
    }
    final monitorDurationInSecondsValue = monitorDurationInSeconds;
    if (monitorDurationInSecondsValue != null) {
      map['monitorDurationInSeconds'] = monitorDurationInSecondsValue;
    }
    return map;
  }

  factory DeploymentConfigZonalConfig.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigZonalConfig(
      firstZoneMonitorDurationInSeconds:
          map['firstZoneMonitorDurationInSeconds'] == null
              ? null
              : map['firstZoneMonitorDurationInSeconds'] as int,
      minimumHealthyHostsPerZone: map['minimumHealthyHostsPerZone'] == null
          ? null
          : DeploymentConfigZonalConfigMinimumHealthyHostsPerZone.fromMap(
              (map['minimumHealthyHostsPerZone'] as Map)
                  .cast<String, dynamic>()),
      monitorDurationInSeconds: map['monitorDurationInSeconds'] == null
          ? null
          : map['monitorDurationInSeconds'] as int,
    );
  }
}
