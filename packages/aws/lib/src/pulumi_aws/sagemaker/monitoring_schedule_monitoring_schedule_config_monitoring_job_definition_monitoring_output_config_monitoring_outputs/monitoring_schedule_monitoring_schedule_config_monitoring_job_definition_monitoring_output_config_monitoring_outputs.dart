// ignore_for_file: unused_element, unnecessary_cast

import '../monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_output_config_monitoring_outputs_s3_output/monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_output_config_monitoring_outputs_s3_output.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs {
  /// Amazon S3 storage location where the results of a monitoring job are saved. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output
      s3Output;

  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs({
    required this.s3Output,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Output'] = s3Output.toMap();
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs(
      s3Output:
          MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output
              .fromMap((map['s3Output'] as Map).cast<String, dynamic>()),
    );
  }
}
