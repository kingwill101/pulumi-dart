// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_job_definition_data_quality_job_output_config_monitoring_outputs.dart';

class DataQualityJobDefinitionDataQualityJobOutputConfig {
  /// KMS key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  final pulumi.Input<String?>? kmsKeyId;
  /// Monitoring outputs for monitoring jobs. This is where the output of the periodic monitoring jobs is uploaded. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs> monitoringOutputs;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobOutputConfig].
  /// [kmsKeyId] KMS key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  /// [monitoringOutputs] Monitoring outputs for monitoring jobs. This is where the output of the periodic monitoring jobs is uploaded. Fields are documented below.
  const DataQualityJobDefinitionDataQualityJobOutputConfig({
    this.kmsKeyId,
    required this.monitoringOutputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'monitoringOutputs': pulumi.Input.mapInputValue<DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs, Map<String, dynamic>>(monitoringOutputs, (value) => value.toMap()),
    };
  }

  factory DataQualityJobDefinitionDataQualityJobOutputConfig.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobOutputConfig(
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringOutputs: pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs.fromMap((map['monitoringOutputs']! as Map).cast<String, dynamic>())),
    );
  }
}
