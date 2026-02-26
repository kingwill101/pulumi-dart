// ignore_for_file: unused_element, unnecessary_cast

import '../data_quality_job_definition_data_quality_job_input_batch_transform_input_dataset_format/data_quality_job_definition_data_quality_job_input_batch_transform_input_dataset_format.dart';

class DataQualityJobDefinitionDataQualityJobInputBatchTransformInput {
  /// The Amazon S3 location being used to capture the data.
  final String dataCapturedDestinationS3Uri;

  /// The dataset format for your batch transform job. Fields are documented below.
  final DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat
      datasetFormat;

  /// Path to the filesystem where the batch transform data is available to the container. Defaults to `/opt/ml/processing/input`.
  final String? localPath;

  /// Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Defaults to `FullyReplicated`. Valid values are `FullyReplicated` or `ShardedByS3Key`
  final String? s3DataDistributionType;

  /// Whether the `Pipe` or `File` is used as the input mode for transferring data for the monitoring job. `Pipe` mode is recommended for large datasets. `File` mode is useful for small files that fit in memory. Defaults to `File`.  Valid values are `Pipe` or `File`
  final String? s3InputMode;

  DataQualityJobDefinitionDataQualityJobInputBatchTransformInput({
    required this.dataCapturedDestinationS3Uri,
    required this.datasetFormat,
    this.localPath,
    this.s3DataDistributionType,
    this.s3InputMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCapturedDestinationS3Uri'] = dataCapturedDestinationS3Uri;
    map['datasetFormat'] = datasetFormat.toMap();
    final localPathValue = localPath;
    if (localPathValue != null) {
      map['localPath'] = localPathValue;
    }
    final s3DataDistributionTypeValue = s3DataDistributionType;
    if (s3DataDistributionTypeValue != null) {
      map['s3DataDistributionType'] = s3DataDistributionTypeValue;
    }
    final s3InputModeValue = s3InputMode;
    if (s3InputModeValue != null) {
      map['s3InputMode'] = s3InputModeValue;
    }
    return map;
  }

  factory DataQualityJobDefinitionDataQualityJobInputBatchTransformInput.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInputBatchTransformInput(
      dataCapturedDestinationS3Uri:
          map['dataCapturedDestinationS3Uri'] as String,
      datasetFormat:
          DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat
              .fromMap((map['datasetFormat'] as Map).cast<String, dynamic>()),
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
      s3DataDistributionType: map['s3DataDistributionType'] == null
          ? null
          : map['s3DataDistributionType'] as String,
      s3InputMode:
          map['s3InputMode'] == null ? null : map['s3InputMode'] as String,
    );
  }
}
