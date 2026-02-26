// ignore_for_file: unused_element, unnecessary_cast

import '../monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_resources_cluster_config/monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_resources_cluster_config.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResources {
  /// Configuration for the cluster resources used to run the processing job. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig
      clusterConfig;

  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResources({
    required this.clusterConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterConfig'] = clusterConfig.toMap();
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResources.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResources(
      clusterConfig:
          MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResourcesClusterConfig
              .fromMap((map['clusterConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
