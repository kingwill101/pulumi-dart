// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_validation_specification_validation_profiles_training_job_definition_input_data_config_data_source.dart';
import 'algorithm_validation_specification_validation_profiles_training_job_definition_input_data_config_shuffle_config.dart';

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig {
  /// Name of the channel.
  final pulumi.Input<String> channelName;
  /// Compression type of the input data. Allowed values are: `None` and `Gzip`.
  final pulumi.Input<String?>? compressionType;
  /// MIME type of the input data.
  final pulumi.Input<String?>? contentType;
  /// Source of the input data. See Data Source.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSource> dataSource;
  /// Training input mode for the channel. Allowed values are: `Pipe`, `File`, and `FastFile`.
  final pulumi.Input<String?>? inputMode;
  /// Record wrapper type. Allowed values are: `None` and `RecordIO`.
  final pulumi.Input<String?>? recordWrapperType;
  /// Shuffle configuration for the channel. See Shuffle Config.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigShuffleConfig?>? shuffleConfig;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig].
  /// [channelName] Name of the channel.
  /// [compressionType] Compression type of the input data. Allowed values are: `None` and `Gzip`.
  /// [contentType] MIME type of the input data.
  /// [dataSource] Source of the input data. See Data Source.
  /// [inputMode] Training input mode for the channel. Allowed values are: `Pipe`, `File`, and `FastFile`.
  /// [recordWrapperType] Record wrapper type. Allowed values are: `None` and `RecordIO`.
  /// [shuffleConfig] Shuffle configuration for the channel. See Shuffle Config.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig({
    required this.channelName,
    this.compressionType,
    this.contentType,
    required this.dataSource,
    this.inputMode,
    this.recordWrapperType,
    this.shuffleConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'compressionType': ?compressionType,
      'contentType': ?contentType,
      'dataSource': pulumi.Input.mapInputValue<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSource, Map<String, dynamic>>(dataSource, (value) => value.toMap()),
      'inputMode': ?inputMode,
      'recordWrapperType': ?recordWrapperType,
      'shuffleConfig': ?pulumi.Input.mapOptionalInputValue<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigShuffleConfig, Map<String, dynamic>>(shuffleConfig, (value) => value.toMap()),
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfig(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      compressionType: (() { final guardedValue = map['compressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSource.fromMap((map['dataSource']! as Map).cast<String, dynamic>())),
      inputMode: (() { final guardedValue = map['inputMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordWrapperType: (() { final guardedValue = map['recordWrapperType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shuffleConfig: (() { final guardedValue = map['shuffleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigShuffleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
