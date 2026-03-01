// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition.dart';
import 'monitoring_schedule_monitoring_schedule_config_schedule_config.dart';

class MonitoringScheduleMonitoringScheduleConfig {
  /// Defines the monitoring job. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition?
  monitoringJobDefinition;

  /// The name of the monitoring job definition to schedule.
  final String? monitoringJobDefinitionName;

  /// The type of the monitoring job definition to schedule. Valid values are `DataQuality`, `ModelQuality`, `ModelBias` or `ModelExplainability`
  final String monitoringType;

  /// Configures the monitoring schedule. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigScheduleConfig?
  scheduleConfig;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfig].
  /// [monitoringJobDefinition] Defines the monitoring job. Fields are documented below.
  /// [monitoringJobDefinitionName] The name of the monitoring job definition to schedule.
  /// [monitoringType] The type of the monitoring job definition to schedule. Valid values are `DataQuality`, `ModelQuality`, `ModelBias` or `ModelExplainability`
  /// [scheduleConfig] Configures the monitoring schedule. Fields are documented below.
  MonitoringScheduleMonitoringScheduleConfig({
    this.monitoringJobDefinition,
    this.monitoringJobDefinitionName,
    required this.monitoringType,
    this.scheduleConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitoringJobDefinition': ?monitoringJobDefinition == null
          ? null
          : monitoringJobDefinition!.toMap(),
      'monitoringJobDefinitionName': ?monitoringJobDefinitionName,
      'monitoringType': monitoringType,
      'scheduleConfig': ?scheduleConfig == null
          ? null
          : scheduleConfig!.toMap(),
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return MonitoringScheduleMonitoringScheduleConfig(
      monitoringJobDefinition: map['monitoringJobDefinition'] == null
          ? null
          : MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition.fromMap(
              (map['monitoringJobDefinition'] as Map).cast<String, dynamic>(),
            ),
      monitoringJobDefinitionName: map['monitoringJobDefinitionName'] == null
          ? null
          : map['monitoringJobDefinitionName'] as String,
      monitoringType: map['monitoringType'] as String,
      scheduleConfig: map['scheduleConfig'] == null
          ? null
          : MonitoringScheduleMonitoringScheduleConfigScheduleConfig.fromMap(
              (map['scheduleConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
