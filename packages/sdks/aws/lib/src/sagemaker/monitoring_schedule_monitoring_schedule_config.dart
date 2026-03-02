// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition.dart';
import 'monitoring_schedule_monitoring_schedule_config_schedule_config.dart';

class MonitoringScheduleMonitoringScheduleConfig {
  /// Defines the monitoring job. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition>? monitoringJobDefinition;
  /// The name of the monitoring job definition to schedule.
  final pulumi.Input<String>? monitoringJobDefinitionName;
  /// The type of the monitoring job definition to schedule. Valid values are `DataQuality`, `ModelQuality`, `ModelBias` or `ModelExplainability`
  final pulumi.Input<String> monitoringType;
  /// Configures the monitoring schedule. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigScheduleConfig>? scheduleConfig;

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
      'monitoringJobDefinition': ?pulumi.Input.mapOptionalInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition, Map<String, dynamic>>(monitoringJobDefinition, (value) => value.toMap()),
      'monitoringJobDefinitionName': ?monitoringJobDefinitionName,
      'monitoringType': monitoringType,
      'scheduleConfig': ?pulumi.Input.mapOptionalInputValue<MonitoringScheduleMonitoringScheduleConfigScheduleConfig, Map<String, dynamic>>(scheduleConfig, (value) => value.toMap()),
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfig.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfig(
      monitoringJobDefinition: map['monitoringJobDefinition'] == null ? null : (MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition.fromMap((map['monitoringJobDefinition'] as Map).cast<String, dynamic>())).input(),
      monitoringJobDefinitionName: map['monitoringJobDefinitionName'] == null ? null : (map['monitoringJobDefinitionName'] as String).input(),
      monitoringType: (map['monitoringType'] as String).input(),
      scheduleConfig: map['scheduleConfig'] == null ? null : (MonitoringScheduleMonitoringScheduleConfigScheduleConfig.fromMap((map['scheduleConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

