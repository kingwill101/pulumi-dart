// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_output_config_monitoring_outputs_s3_output.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs {
  /// Amazon S3 storage location where the results of a monitoring job are saved. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output> s3Output;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs].
  /// [s3Output] Amazon S3 storage location where the results of a monitoring job are saved. Fields are documented below.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs({
    required this.s3Output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Output': pulumi.Input.mapInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output, Map<String, dynamic>>(s3Output, (value) => value.toMap()),
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs(
      s3Output: (MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output.fromMap((map['s3Output']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

