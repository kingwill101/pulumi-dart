// ignore_for_file: unused_element, unnecessary_cast

import 'data_quality_job_definition_data_quality_job_output_config_monitoring_outputs_s3_output.dart';

class DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs {
  /// The Amazon S3 storage location where the results of a monitoring job are saved. Fields are documented below.
  final DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output s3Output;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs].
  /// [s3Output] The Amazon S3 storage location where the results of a monitoring job are saved. Fields are documented below.
  DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs({
    required this.s3Output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Output': s3Output.toMap(),
    };
  }

  factory DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs(
      s3Output: DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output.fromMap((map['s3Output'] as Map).cast<String, dynamic>()),
    );
  }
}

