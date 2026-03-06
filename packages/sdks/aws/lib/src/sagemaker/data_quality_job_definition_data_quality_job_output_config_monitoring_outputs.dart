// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_job_definition_data_quality_job_output_config_monitoring_outputs_s3_output.dart';

class DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs {
  /// The Amazon S3 storage location where the results of a monitoring job are saved. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output> s3Output;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs].
  /// [s3Output] The Amazon S3 storage location where the results of a monitoring job are saved. Fields are documented below.
  const DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs({
    required this.s3Output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Output': pulumi.Input.mapInputValue<DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output, Map<String, dynamic>>(s3Output, (value) => value.toMap()),
    };
  }

  factory DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs(
      s3Output: pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output.fromMap((map['s3Output']! as Map).cast<String, dynamic>())),
    );
  }
}

