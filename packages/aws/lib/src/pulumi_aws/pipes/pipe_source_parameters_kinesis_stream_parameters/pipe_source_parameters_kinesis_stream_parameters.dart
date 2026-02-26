// ignore_for_file: unused_element, unnecessary_cast

import '../pipe_source_parameters_kinesis_stream_parameters_dead_letter_config/pipe_source_parameters_kinesis_stream_parameters_dead_letter_config.dart';

class PipeSourceParametersKinesisStreamParameters {
  /// The maximum number of records to include in each batch. Maximum value of 10000.
  final int? batchSize;

  /// Define the target queue to send dead-letter queue events to. Detailed below.
  final PipeSourceParametersKinesisStreamParametersDeadLetterConfig?
      deadLetterConfig;

  /// The maximum length of a time to wait for events. Maximum value of 300.
  final int? maximumBatchingWindowInSeconds;

  /// Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, EventBridge never discards old records. Maximum value of 604,800.
  final int? maximumRecordAgeInSeconds;

  /// Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, EventBridge retries failed records until the record expires in the event source. Maximum value of 10,000.
  final int? maximumRetryAttempts;

  /// Define how to handle item process failures. AUTOMATIC_BISECT halves each batch and retry each half until all the records are processed or there is one failed message left in the batch. Valid values: AUTOMATIC_BISECT.
  final String? onPartialBatchItemFailure;

  /// The number of batches to process concurrently from each shard. The default value is 1. Maximum value of 10.
  final int? parallelizationFactor;

  /// The position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  final String startingPosition;

  /// With StartingPosition set to AT_TIMESTAMP, the time from which to start reading, in Unix time seconds.
  final String? startingPositionTimestamp;

  PipeSourceParametersKinesisStreamParameters({
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
    final map = <String, dynamic>{};
    final batchSizeValue = batchSize;
    if (batchSizeValue != null) {
      map['batchSize'] = batchSizeValue;
    }
    final deadLetterConfigValue = deadLetterConfig;
    if (deadLetterConfigValue != null) {
      map['deadLetterConfig'] = deadLetterConfigValue.toMap();
    }
    final maximumBatchingWindowInSecondsValue = maximumBatchingWindowInSeconds;
    if (maximumBatchingWindowInSecondsValue != null) {
      map['maximumBatchingWindowInSeconds'] =
          maximumBatchingWindowInSecondsValue;
    }
    final maximumRecordAgeInSecondsValue = maximumRecordAgeInSeconds;
    if (maximumRecordAgeInSecondsValue != null) {
      map['maximumRecordAgeInSeconds'] = maximumRecordAgeInSecondsValue;
    }
    final maximumRetryAttemptsValue = maximumRetryAttempts;
    if (maximumRetryAttemptsValue != null) {
      map['maximumRetryAttempts'] = maximumRetryAttemptsValue;
    }
    final onPartialBatchItemFailureValue = onPartialBatchItemFailure;
    if (onPartialBatchItemFailureValue != null) {
      map['onPartialBatchItemFailure'] = onPartialBatchItemFailureValue;
    }
    final parallelizationFactorValue = parallelizationFactor;
    if (parallelizationFactorValue != null) {
      map['parallelizationFactor'] = parallelizationFactorValue;
    }
    map['startingPosition'] = startingPosition;
    final startingPositionTimestampValue = startingPositionTimestamp;
    if (startingPositionTimestampValue != null) {
      map['startingPositionTimestamp'] = startingPositionTimestampValue;
    }
    return map;
  }

  factory PipeSourceParametersKinesisStreamParameters.fromMap(
      Map<String, dynamic> map) {
    return PipeSourceParametersKinesisStreamParameters(
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      deadLetterConfig: map['deadLetterConfig'] == null
          ? null
          : PipeSourceParametersKinesisStreamParametersDeadLetterConfig.fromMap(
              (map['deadLetterConfig'] as Map).cast<String, dynamic>()),
      maximumBatchingWindowInSeconds:
          map['maximumBatchingWindowInSeconds'] == null
              ? null
              : map['maximumBatchingWindowInSeconds'] as int,
      maximumRecordAgeInSeconds: map['maximumRecordAgeInSeconds'] == null
          ? null
          : map['maximumRecordAgeInSeconds'] as int,
      maximumRetryAttempts: map['maximumRetryAttempts'] == null
          ? null
          : map['maximumRetryAttempts'] as int,
      onPartialBatchItemFailure: map['onPartialBatchItemFailure'] == null
          ? null
          : map['onPartialBatchItemFailure'] as String,
      parallelizationFactor: map['parallelizationFactor'] == null
          ? null
          : map['parallelizationFactor'] as int,
      startingPosition: map['startingPosition'] as String,
      startingPositionTimestamp: map['startingPositionTimestamp'] == null
          ? null
          : map['startingPositionTimestamp'] as String,
    );
  }
}
