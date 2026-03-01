// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_output_config_monitoring_outputs.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig {
  /// AWS KMS key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  final String? kmsKeyId;

  /// Monitoring outputs for monitoring jobs. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs
  monitoringOutputs;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig].
  /// [kmsKeyId] AWS KMS key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  /// [monitoringOutputs] Monitoring outputs for monitoring jobs. Fields are documented below.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig({
    this.kmsKeyId,
    required this.monitoringOutputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'monitoringOutputs': monitoringOutputs.toMap(),
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      monitoringOutputs:
          MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputs.fromMap(
            (map['monitoringOutputs'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
