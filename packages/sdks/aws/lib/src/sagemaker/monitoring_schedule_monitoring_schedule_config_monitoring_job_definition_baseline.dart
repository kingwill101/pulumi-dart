// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_baseline_constraints_resource.dart';
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_baseline_statistics_resource.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline {
  final pulumi.Input<String>? baseliningJobName;
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource>? constraintsResource;
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource>? statisticsResource;

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
    return <String, dynamic>{
      'baseliningJobName': ?baseliningJobName,
      'constraintsResource': ?pulumi.Input.mapOptionalInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource, Map<String, dynamic>>(constraintsResource, (value) => value.toMap()),
      'statisticsResource': ?pulumi.Input.mapOptionalInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource, Map<String, dynamic>>(statisticsResource, (value) => value.toMap()),
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline(
      baseliningJobName: map['baseliningJobName'] == null ? null : (map['baseliningJobName'] as String).input(),
      constraintsResource: map['constraintsResource'] == null ? null : (MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource.fromMap((map['constraintsResource'] as Map).cast<String, dynamic>())).input(),
      statisticsResource: map['statisticsResource'] == null ? null : (MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource.fromMap((map['statisticsResource'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

