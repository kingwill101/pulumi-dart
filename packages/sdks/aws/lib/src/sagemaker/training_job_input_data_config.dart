// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'training_job_input_data_config_data_source.dart';
import 'training_job_input_data_config_shuffle_config.dart';

class TrainingJobInputDataConfig {
  /// Name of the channel. Must be between 1 and 64 characters.
  final pulumi.Input<String> channelName;
  /// Compression type for the input data. Valid values: `None`, `Gzip`.
  final pulumi.Input<String?>? compressionType;
  /// MIME type of the input data.
  final pulumi.Input<String?>? contentType;
  /// Location of the channel data. See `dataSource` below.
  final pulumi.Input<TrainingJobInputDataConfigDataSource?>? dataSource;
  /// Input mode for the channel data. Valid values: `File`, `Pipe`, `FastFile`.
  final pulumi.Input<String?>? inputMode;
  /// Record wrapper type. Valid values: `None`, `RecordIO`.
  final pulumi.Input<String?>? recordWrapperType;
  /// Configuration for shuffling data in the channel. See `shuffleConfig` below.
  final pulumi.Input<TrainingJobInputDataConfigShuffleConfig?>? shuffleConfig;

  /// Creates a new [TrainingJobInputDataConfig].
  /// [channelName] Name of the channel. Must be between 1 and 64 characters.
  /// [compressionType] Compression type for the input data. Valid values: `None`, `Gzip`.
  /// [contentType] MIME type of the input data.
  /// [dataSource] Location of the channel data. See `dataSource` below.
  /// [inputMode] Input mode for the channel data. Valid values: `File`, `Pipe`, `FastFile`.
  /// [recordWrapperType] Record wrapper type. Valid values: `None`, `RecordIO`.
  /// [shuffleConfig] Configuration for shuffling data in the channel. See `shuffleConfig` below.
  const TrainingJobInputDataConfig({
    required this.channelName,
    this.compressionType,
    this.contentType,
    this.dataSource,
    this.inputMode,
    this.recordWrapperType,
    this.shuffleConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'compressionType': ?compressionType,
      'contentType': ?contentType,
      'dataSource': ?pulumi.Input.mapOptionalInputValue<TrainingJobInputDataConfigDataSource, Map<String, dynamic>>(dataSource, (value) => value.toMap()),
      'inputMode': ?inputMode,
      'recordWrapperType': ?recordWrapperType,
      'shuffleConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobInputDataConfigShuffleConfig, Map<String, dynamic>>(shuffleConfig, (value) => value.toMap()),
    };
  }

  factory TrainingJobInputDataConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobInputDataConfig(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      compressionType: (() { final guardedValue = map['compressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobInputDataConfigDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputMode: (() { final guardedValue = map['inputMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordWrapperType: (() { final guardedValue = map['recordWrapperType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shuffleConfig: (() { final guardedValue = map['shuffleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobInputDataConfigShuffleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
