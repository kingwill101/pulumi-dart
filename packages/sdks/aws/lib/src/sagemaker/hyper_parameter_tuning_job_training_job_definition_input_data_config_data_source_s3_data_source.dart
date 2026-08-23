// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_training_job_definition_input_data_config_data_source_s3_data_source_hub_access_config.dart';
import 'hyper_parameter_tuning_job_training_job_definition_input_data_config_data_source_s3_data_source_model_access_config.dart';

class HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSource {
  /// Attribute names for Pipe mode.
  final pulumi.Input<List<String>>? attributeNames;
  /// Hub access settings. See `hubAccessConfig`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig>? hubAccessConfig;
  /// Instance group names used with this channel.
  final pulumi.Input<List<String>>? instanceGroupNames;
  /// Model access settings. See `modelAccessConfig`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig>? modelAccessConfig;
  /// Distribution mode for S3 data.
  final pulumi.Input<String>? s3DataDistributionType;
  /// S3 data type.
  final pulumi.Input<String> s3DataType;
  /// S3 or HTTPS source URI.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSource].
  /// [attributeNames] Attribute names for Pipe mode.
  /// [hubAccessConfig] Hub access settings. See `hubAccessConfig`.
  /// [instanceGroupNames] Instance group names used with this channel.
  /// [modelAccessConfig] Model access settings. See `modelAccessConfig`.
  /// [s3DataDistributionType] Distribution mode for S3 data.
  /// [s3DataType] S3 data type.
  /// [s3Uri] S3 or HTTPS source URI.
  const HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSource({
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
      'hubAccessConfig': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig, Map<String, dynamic>>(hubAccessConfig, (value) => value.toMap()),
      'instanceGroupNames': ?instanceGroupNames,
      'modelAccessConfig': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig, Map<String, dynamic>>(modelAccessConfig, (value) => value.toMap()),
      's3DataDistributionType': ?s3DataDistributionType,
      's3DataType': s3DataType,
      's3Uri': s3Uri,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSource.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSource(
      attributeNames: (() { final guardedValue = map['attributeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hubAccessConfig: (() { final guardedValue = map['hubAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceGroupNames: (() { final guardedValue = map['instanceGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      modelAccessConfig: (() { final guardedValue = map['modelAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3DataDistributionType: (() { final guardedValue = map['s3DataDistributionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3DataType: pulumi.Input.fromValue(map['s3DataType'] as String),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
