// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_job_definition_data_quality_job_input_batch_transform_input_dataset_format.dart';

class DataQualityJobDefinitionDataQualityJobInputBatchTransformInput {
  /// The Amazon S3 location being used to capture the data.
  final pulumi.Input<String> dataCapturedDestinationS3Uri;
  /// The dataset format for your batch transform job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat> datasetFormat;
  /// Path to the filesystem where the batch transform data is available to the container. Defaults to `/opt/ml/processing/input`.
  final pulumi.Input<String>? localPath;
  /// Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Defaults to `FullyReplicated`. Valid values are `FullyReplicated` or `ShardedByS3Key`
  final pulumi.Input<String>? s3DataDistributionType;
  /// Whether the `Pipe` or `File` is used as the input mode for transferring data for the monitoring job. `Pipe` mode is recommended for large datasets. `File` mode is useful for small files that fit in memory. Defaults to `File`.  Valid values are `Pipe` or `File`
  final pulumi.Input<String>? s3InputMode;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobInputBatchTransformInput].
  /// [dataCapturedDestinationS3Uri] The Amazon S3 location being used to capture the data.
  /// [datasetFormat] The dataset format for your batch transform job. Fields are documented below.
  /// [localPath] Path to the filesystem where the batch transform data is available to the container. Defaults to `/opt/ml/processing/input`.
  /// [s3DataDistributionType] Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Defaults to `FullyReplicated`. Valid values are `FullyReplicated` or `ShardedByS3Key`
  /// [s3InputMode] Whether the `Pipe` or `File` is used as the input mode for transferring data for the monitoring job. `Pipe` mode is recommended for large datasets. `File` mode is useful for small files that fit in memory. Defaults to `File`.  Valid values are `Pipe` or `File`
  const DataQualityJobDefinitionDataQualityJobInputBatchTransformInput({
    required this.dataCapturedDestinationS3Uri,
    required this.datasetFormat,
    this.localPath,
    this.s3DataDistributionType,
    this.s3InputMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCapturedDestinationS3Uri': dataCapturedDestinationS3Uri,
      'datasetFormat': pulumi.Input.mapInputValue<DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat, Map<String, dynamic>>(datasetFormat, (value) => value.toMap()),
      'localPath': ?localPath,
      's3DataDistributionType': ?s3DataDistributionType,
      's3InputMode': ?s3InputMode,
    };
  }

  factory DataQualityJobDefinitionDataQualityJobInputBatchTransformInput.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInputBatchTransformInput(
      dataCapturedDestinationS3Uri: pulumi.Input.fromValue(map['dataCapturedDestinationS3Uri'] as String),
      datasetFormat: pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat.fromMap((map['datasetFormat']! as Map).cast<String, dynamic>())),
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3DataDistributionType: (() { final guardedValue = map['s3DataDistributionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3InputMode: (() { final guardedValue = map['s3InputMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
