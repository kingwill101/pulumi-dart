// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_validation_specification_validation_profiles_training_job_definition_input_data_config_data_source_s3_data_source_hub_access_config.dart';
import 'algorithm_validation_specification_validation_profiles_training_job_definition_input_data_config_data_source_s3_data_source_model_access_config.dart';

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSource {
  /// List of JSON attribute names to select from the input data.
  final pulumi.Input<List<String>>? attributeNames;
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig>? hubAccessConfig;
  /// Instance group names associated with the data source.
  final pulumi.Input<List<String>>? instanceGroupNames;
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig>? modelAccessConfig;
  /// Distribution type for S3 data. Allowed values are: `FullyReplicated` and `ShardedByS3Key`.
  final pulumi.Input<String>? s3DataDistributionType;
  final pulumi.Input<String> s3DataType;
  final pulumi.Input<String> s3Uri;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSource].
  /// [attributeNames] List of JSON attribute names to select from the input data.
  /// [hubAccessConfig] Optional.
  /// [instanceGroupNames] Instance group names associated with the data source.
  /// [modelAccessConfig] Optional.
  /// [s3DataDistributionType] Distribution type for S3 data. Allowed values are: `FullyReplicated` and `ShardedByS3Key`.
  /// [s3DataType] Required.
  /// [s3Uri] Required.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSource({
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
      'hubAccessConfig': ?pulumi.Input.mapOptionalInputValue<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig, Map<String, dynamic>>(hubAccessConfig, (value) => value.toMap()),
      'instanceGroupNames': ?instanceGroupNames,
      'modelAccessConfig': ?pulumi.Input.mapOptionalInputValue<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig, Map<String, dynamic>>(modelAccessConfig, (value) => value.toMap()),
      's3DataDistributionType': ?s3DataDistributionType,
      's3DataType': s3DataType,
      's3Uri': s3Uri,
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSource.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSource(
      attributeNames: (() { final guardedValue = map['attributeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hubAccessConfig: (() { final guardedValue = map['hubAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceGroupNames: (() { final guardedValue = map['instanceGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      modelAccessConfig: (() { final guardedValue = map['modelAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3DataDistributionType: (() { final guardedValue = map['s3DataDistributionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3DataType: pulumi.Input.fromValue(map['s3DataType'] as String),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
