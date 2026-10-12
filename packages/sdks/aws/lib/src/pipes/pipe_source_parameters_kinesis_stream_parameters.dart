// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_source_parameters_kinesis_stream_parameters_dead_letter_config.dart';

class PipeSourceParametersKinesisStreamParameters {
  final pulumi.Input<int?>? batchSize;
  final pulumi.Input<PipeSourceParametersKinesisStreamParametersDeadLetterConfig?>? deadLetterConfig;
  final pulumi.Input<int?>? maximumBatchingWindowInSeconds;
  final pulumi.Input<int?>? maximumRecordAgeInSeconds;
  final pulumi.Input<int?>? maximumRetryAttempts;
  final pulumi.Input<String?>? onPartialBatchItemFailure;
  final pulumi.Input<int?>? parallelizationFactor;
  final pulumi.Input<String> startingPosition;
  /// With StartingPosition set to AT_TIMESTAMP, the time from which to start reading, in Unix time seconds.
  final pulumi.Input<String?>? startingPositionTimestamp;

  /// Creates a new [PipeSourceParametersKinesisStreamParameters].
  /// [batchSize] Optional.
  /// [deadLetterConfig] Optional.
  /// [maximumBatchingWindowInSeconds] Optional.
  /// [maximumRecordAgeInSeconds] Optional.
  /// [maximumRetryAttempts] Optional.
  /// [onPartialBatchItemFailure] Optional.
  /// [parallelizationFactor] Optional.
  /// [startingPosition] Required.
  /// [startingPositionTimestamp] With StartingPosition set to AT_TIMESTAMP, the time from which to start reading, in Unix time seconds.
  const PipeSourceParametersKinesisStreamParameters({
    this.batchSize,
    this.deadLetterConfig,
    this.maximumBatchingWindowInSeconds,
    this.maximumRecordAgeInSeconds,
    this.maximumRetryAttempts,
    this.onPartialBatchItemFailure,
    this.parallelizationFactor,
    required this.startingPosition,
    this.startingPositionTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'deadLetterConfig': ?pulumi.Input.mapOptionalInputValue<PipeSourceParametersKinesisStreamParametersDeadLetterConfig, Map<String, dynamic>>(deadLetterConfig, (value) => value.toMap()),
      'maximumBatchingWindowInSeconds': ?maximumBatchingWindowInSeconds,
      'maximumRecordAgeInSeconds': ?maximumRecordAgeInSeconds,
      'maximumRetryAttempts': ?maximumRetryAttempts,
      'onPartialBatchItemFailure': ?onPartialBatchItemFailure,
      'parallelizationFactor': ?parallelizationFactor,
      'startingPosition': startingPosition,
      'startingPositionTimestamp': ?startingPositionTimestamp,
    };
  }

  factory PipeSourceParametersKinesisStreamParameters.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersKinesisStreamParameters(
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      deadLetterConfig: (() { final guardedValue = map['deadLetterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersKinesisStreamParametersDeadLetterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumBatchingWindowInSeconds: (() { final guardedValue = map['maximumBatchingWindowInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maximumRecordAgeInSeconds: (() { final guardedValue = map['maximumRecordAgeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maximumRetryAttempts: (() { final guardedValue = map['maximumRetryAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      onPartialBatchItemFailure: (() { final guardedValue = map['onPartialBatchItemFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parallelizationFactor: (() { final guardedValue = map['parallelizationFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      startingPosition: pulumi.Input.fromValue(map['startingPosition'] as String),
      startingPositionTimestamp: (() { final guardedValue = map['startingPositionTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
