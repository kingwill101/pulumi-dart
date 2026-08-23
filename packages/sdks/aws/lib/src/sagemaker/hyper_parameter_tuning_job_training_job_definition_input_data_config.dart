// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_training_job_definition_input_data_config_data_source.dart';
import 'hyper_parameter_tuning_job_training_job_definition_input_data_config_shuffle_config.dart';

class HyperParameterTuningJobTrainingJobDefinitionInputDataConfig {
  /// Input channel name.
  final pulumi.Input<String> channelName;
  /// Compression type.
  final pulumi.Input<String>? compressionType;
  /// Content type string.
  final pulumi.Input<String>? contentType;
  /// Data source settings. See `dataSource`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSource> dataSource;
  /// Input mode.
  final pulumi.Input<String>? inputMode;
  /// Record wrapper format.
  final pulumi.Input<String>? recordWrapperType;
  /// Shuffling settings. See `shuffleConfig`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionInputDataConfigShuffleConfig>? shuffleConfig;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionInputDataConfig].
  /// [channelName] Input channel name.
  /// [compressionType] Compression type.
  /// [contentType] Content type string.
  /// [dataSource] Data source settings. See `dataSource`.
  /// [inputMode] Input mode.
  /// [recordWrapperType] Record wrapper format.
  /// [shuffleConfig] Shuffling settings. See `shuffleConfig`.
  const HyperParameterTuningJobTrainingJobDefinitionInputDataConfig({
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
      'dataSource': pulumi.Input.mapInputValue<HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSource, Map<String, dynamic>>(dataSource, (value) => value.toMap()),
      'inputMode': ?inputMode,
      'recordWrapperType': ?recordWrapperType,
      'shuffleConfig': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinitionInputDataConfigShuffleConfig, Map<String, dynamic>>(shuffleConfig, (value) => value.toMap()),
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionInputDataConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionInputDataConfig(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      compressionType: (() { final guardedValue = map['compressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSource.fromMap((map['dataSource']! as Map).cast<String, dynamic>())),
      inputMode: (() { final guardedValue = map['inputMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordWrapperType: (() { final guardedValue = map['recordWrapperType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shuffleConfig: (() { final guardedValue = map['shuffleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionInputDataConfigShuffleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
