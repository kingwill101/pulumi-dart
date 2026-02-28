// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_baseline_constraints_resource.dart';
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_baseline_statistics_resource.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline {
  final String? baseliningJobName;
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource?
      constraintsResource;
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource?
      statisticsResource;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline].
  /// [baseliningJobName] Optional.
  /// [constraintsResource] Optional.
  /// [statisticsResource] Optional.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline({
    this.baseliningJobName,
    this.constraintsResource,
    this.statisticsResource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseliningJobNameValue = baseliningJobName;
    if (baseliningJobNameValue != null) {
      map['baseliningJobName'] = baseliningJobNameValue;
    }
    final constraintsResourceValue = constraintsResource;
    if (constraintsResourceValue != null) {
      map['constraintsResource'] = constraintsResourceValue.toMap();
    }
    final statisticsResourceValue = statisticsResource;
    if (statisticsResourceValue != null) {
      map['statisticsResource'] = statisticsResourceValue.toMap();
    }
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline(
      baseliningJobName: map['baseliningJobName'] == null
          ? null
          : map['baseliningJobName'] as String,
      constraintsResource: map['constraintsResource'] == null
          ? null
          : MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource
              .fromMap(
                  (map['constraintsResource'] as Map).cast<String, dynamic>()),
      statisticsResource: map['statisticsResource'] == null
          ? null
          : MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource
              .fromMap(
                  (map['statisticsResource'] as Map).cast<String, dynamic>()),
    );
  }
}
