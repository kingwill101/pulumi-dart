// ignore_for_file: unused_element, unnecessary_cast

import '../data_quality_job_definition_data_quality_job_output_config_monitoring_outputs/data_quality_job_definition_data_quality_job_output_config_monitoring_outputs.dart';

class DataQualityJobDefinitionDataQualityJobOutputConfig {
  /// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  final String? kmsKeyId;

  /// Monitoring outputs for monitoring jobs. This is where the output of the periodic monitoring jobs is uploaded. Fields are documented below.
  final DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs
      monitoringOutputs;

  DataQualityJobDefinitionDataQualityJobOutputConfig({
    this.kmsKeyId,
    required this.monitoringOutputs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    map['monitoringOutputs'] = monitoringOutputs.toMap();
    return map;
  }

  factory DataQualityJobDefinitionDataQualityJobOutputConfig.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobOutputConfig(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      monitoringOutputs:
          DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs
              .fromMap(
                  (map['monitoringOutputs'] as Map).cast<String, dynamic>()),
    );
  }
}
