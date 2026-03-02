// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_source_parameters_kinesis_stream_parameters_dead_letter_config.dart';

class PipeSourceParametersKinesisStreamParameters {
  /// The maximum number of records to include in each batch. Maximum value of 10000.
  final pulumi.Input<int>? batchSize;
  /// Define the target queue to send dead-letter queue events to. Detailed below.
  final pulumi.Input<PipeSourceParametersKinesisStreamParametersDeadLetterConfig>? deadLetterConfig;
  /// The maximum length of a time to wait for events. Maximum value of 300.
  final pulumi.Input<int>? maximumBatchingWindowInSeconds;
  /// Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, EventBridge never discards old records. Maximum value of 604,800.
  final pulumi.Input<int>? maximumRecordAgeInSeconds;
  /// Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, EventBridge retries failed records until the record expires in the event source. Maximum value of 10,000.
  final pulumi.Input<int>? maximumRetryAttempts;
  /// Define how to handle item process failures. AUTOMATIC_BISECT halves each batch and retry each half until all the records are processed or there is one failed message left in the batch. Valid values: AUTOMATIC_BISECT.
  final pulumi.Input<String>? onPartialBatchItemFailure;
  /// The number of batches to process concurrently from each shard. The default value is 1. Maximum value of 10.
  final pulumi.Input<int>? parallelizationFactor;
  /// The position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  final pulumi.Input<String> startingPosition;
  /// With StartingPosition set to AT_TIMESTAMP, the time from which to start reading, in Unix time seconds.
  final pulumi.Input<String>? startingPositionTimestamp;

  /// Creates a new [PipeSourceParametersKinesisStreamParameters].
  /// [batchSize] The maximum number of records to include in each batch. Maximum value of 10000.
  /// [deadLetterConfig] Define the target queue to send dead-letter queue events to. Detailed below.
  /// [maximumBatchingWindowInSeconds] The maximum length of a time to wait for events. Maximum value of 300.
  /// [maximumRecordAgeInSeconds] Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, EventBridge never discards old records. Maximum value of 604,800.
  /// [maximumRetryAttempts] Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, EventBridge retries failed records until the record expires in the event source. Maximum value of 10,000.
  /// [onPartialBatchItemFailure] Define how to handle item process failures. AUTOMATIC_BISECT halves each batch and retry each half until all the records are processed or there is one failed message left in the batch. Valid values: AUTOMATIC_BISECT.
  /// [parallelizationFactor] The number of batches to process concurrently from each shard. The default value is 1. Maximum value of 10.
  /// [startingPosition] The position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  /// [startingPositionTimestamp] With StartingPosition set to AT_TIMESTAMP, the time from which to start reading, in Unix time seconds.
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
      batchSize: map['batchSize'] == null ? null : ((map['batchSize'] as int).input()).input(),
      deadLetterConfig: map['deadLetterConfig'] == null ? null : ((PipeSourceParametersKinesisStreamParametersDeadLetterConfig.fromMap((map['deadLetterConfig']! as Map).cast<String, dynamic>())).input()).input(),
      maximumBatchingWindowInSeconds: map['maximumBatchingWindowInSeconds'] == null ? null : ((map['maximumBatchingWindowInSeconds'] as int).input()).input(),
      maximumRecordAgeInSeconds: map['maximumRecordAgeInSeconds'] == null ? null : ((map['maximumRecordAgeInSeconds'] as int).input()).input(),
      maximumRetryAttempts: map['maximumRetryAttempts'] == null ? null : ((map['maximumRetryAttempts'] as int).input()).input(),
      onPartialBatchItemFailure: map['onPartialBatchItemFailure'] == null ? null : ((map['onPartialBatchItemFailure'] as String).input()).input(),
      parallelizationFactor: map['parallelizationFactor'] == null ? null : ((map['parallelizationFactor'] as int).input()).input(),
      startingPosition: (map['startingPosition'] as String).input(),
      startingPositionTimestamp: map['startingPositionTimestamp'] == null ? null : ((map['startingPositionTimestamp'] as String).input()).input(),
    );
  }
}

