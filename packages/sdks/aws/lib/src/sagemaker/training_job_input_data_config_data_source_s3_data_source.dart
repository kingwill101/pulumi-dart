// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'training_job_input_data_config_data_source_s3_data_source_hub_access_config.dart';
import 'training_job_input_data_config_data_source_s3_data_source_model_access_config.dart';

class TrainingJobInputDataConfigDataSourceS3DataSource {
  /// List of attribute names to include in the training dataset. Maximum of 16.
  final pulumi.Input<List<String>>? attributeNames;
  /// SageMaker AI Hub access configuration. See `hubAccessConfig` below.
  final pulumi.Input<TrainingJobInputDataConfigDataSourceS3DataSourceHubAccessConfig>? hubAccessConfig;
  /// List of instance group names for the training data distribution. Maximum of 5.
  final pulumi.Input<List<String>>? instanceGroupNames;
  /// Model access configuration. See `modelAccessConfig` below.
  final pulumi.Input<TrainingJobInputDataConfigDataSourceS3DataSourceModelAccessConfig>? modelAccessConfig;
  /// Distribution type for S3 data. Valid values: `FullyReplicated`, `ShardedByS3Key`.
  final pulumi.Input<String>? s3DataDistributionType;
  /// S3 data type. Valid values: `ManifestFile`, `S3Prefix`, `AugmentedManifestFile`.
  final pulumi.Input<String> s3DataType;
  /// S3 URI of the data.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [TrainingJobInputDataConfigDataSourceS3DataSource].
  /// [attributeNames] List of attribute names to include in the training dataset. Maximum of 16.
  /// [hubAccessConfig] SageMaker AI Hub access configuration. See `hubAccessConfig` below.
  /// [instanceGroupNames] List of instance group names for the training data distribution. Maximum of 5.
  /// [modelAccessConfig] Model access configuration. See `modelAccessConfig` below.
  /// [s3DataDistributionType] Distribution type for S3 data. Valid values: `FullyReplicated`, `ShardedByS3Key`.
  /// [s3DataType] S3 data type. Valid values: `ManifestFile`, `S3Prefix`, `AugmentedManifestFile`.
  /// [s3Uri] S3 URI of the data.
  const TrainingJobInputDataConfigDataSourceS3DataSource({
    this.attributeNames,
    this.hubAccessConfig,
    this.instanceGroupNames,
    this.modelAccessConfig,
    this.s3DataDistributionType,
    required this.s3DataType,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeNames': ?attributeNames,
      'hubAccessConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobInputDataConfigDataSourceS3DataSourceHubAccessConfig, Map<String, dynamic>>(hubAccessConfig, (value) => value.toMap()),
      'instanceGroupNames': ?instanceGroupNames,
      'modelAccessConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobInputDataConfigDataSourceS3DataSourceModelAccessConfig, Map<String, dynamic>>(modelAccessConfig, (value) => value.toMap()),
      's3DataDistributionType': ?s3DataDistributionType,
      's3DataType': s3DataType,
      's3Uri': s3Uri,
    };
  }

  factory TrainingJobInputDataConfigDataSourceS3DataSource.fromMap(Map<String, dynamic> map) {
    return TrainingJobInputDataConfigDataSourceS3DataSource(
      attributeNames: (() { final guardedValue = map['attributeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hubAccessConfig: (() { final guardedValue = map['hubAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobInputDataConfigDataSourceS3DataSourceHubAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceGroupNames: (() { final guardedValue = map['instanceGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      modelAccessConfig: (() { final guardedValue = map['modelAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobInputDataConfigDataSourceS3DataSourceModelAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3DataDistributionType: (() { final guardedValue = map['s3DataDistributionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3DataType: pulumi.Input.fromValue(map['s3DataType'] as String),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
