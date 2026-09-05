// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_source_parameters_dynamodb_stream_parameters_dead_letter_config.dart';

class PipeSourceParametersDynamodbStreamParameters {
  /// The maximum number of records to include in each batch. Maximum value of 10000.
  final pulumi.Input<int?>? batchSize;
  /// Define the target queue to send dead-letter queue events to. Detailed below.
  final pulumi.Input<PipeSourceParametersDynamodbStreamParametersDeadLetterConfig?>? deadLetterConfig;
  /// The maximum length of a time to wait for events. Maximum value of 300.
  final pulumi.Input<int?>? maximumBatchingWindowInSeconds;
  /// Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, EventBridge never discards old records. Maximum value of 604,800.
  final pulumi.Input<int?>? maximumRecordAgeInSeconds;
  /// Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, EventBridge retries failed records until the record expires in the event source. Maximum value of 10,000.
  final pulumi.Input<int?>? maximumRetryAttempts;
  /// Define how to handle item process failures. AUTOMATIC_BISECT halves each batch and retry each half until all the records are processed or there is one failed message left in the batch. Valid values: AUTOMATIC_BISECT.
  final pulumi.Input<String?>? onPartialBatchItemFailure;
  /// The number of batches to process concurrently from each shard. The default value is 1. Maximum value of 10.
  final pulumi.Input<int?>? parallelizationFactor;
  /// The position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  final pulumi.Input<String> startingPosition;

  /// Creates a new [PipeSourceParametersDynamodbStreamParameters].
  /// [batchSize] The maximum number of records to include in each batch. Maximum value of 10000.
  /// [deadLetterConfig] Define the target queue to send dead-letter queue events to. Detailed below.
  /// [maximumBatchingWindowInSeconds] The maximum length of a time to wait for events. Maximum value of 300.
  /// [maximumRecordAgeInSeconds] Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. When the value is set to infinite, EventBridge never discards old records. Maximum value of 604,800.
  /// [maximumRetryAttempts] Discard records after the specified number of retries. The default value is -1, which sets the maximum number of retries to infinite. When MaximumRetryAttempts is infinite, EventBridge retries failed records until the record expires in the event source. Maximum value of 10,000.
  /// [onPartialBatchItemFailure] Define how to handle item process failures. AUTOMATIC_BISECT halves each batch and retry each half until all the records are processed or there is one failed message left in the batch. Valid values: AUTOMATIC_BISECT.
  /// [parallelizationFactor] The number of batches to process concurrently from each shard. The default value is 1. Maximum value of 10.
  /// [startingPosition] The position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  const PipeSourceParametersDynamodbStreamParameters({
    this.batchSize,
    this.deadLetterConfig,
    this.maximumBatchingWindowInSeconds,
    this.maximumRecordAgeInSeconds,
    this.maximumRetryAttempts,
    this.onPartialBatchItemFailure,
    this.parallelizationFactor,
    required this.startingPosition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'deadLetterConfig': ?pulumi.Input.mapOptionalInputValue<PipeSourceParametersDynamodbStreamParametersDeadLetterConfig, Map<String, dynamic>>(deadLetterConfig, (value) => value.toMap()),
      'maximumBatchingWindowInSeconds': ?maximumBatchingWindowInSeconds,
      'maximumRecordAgeInSeconds': ?maximumRecordAgeInSeconds,
      'maximumRetryAttempts': ?maximumRetryAttempts,
      'onPartialBatchItemFailure': ?onPartialBatchItemFailure,
      'parallelizationFactor': ?parallelizationFactor,
      'startingPosition': startingPosition,
    };
  }

  factory PipeSourceParametersDynamodbStreamParameters.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersDynamodbStreamParameters(
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      deadLetterConfig: (() { final guardedValue = map['deadLetterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeSourceParametersDynamodbStreamParametersDeadLetterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumBatchingWindowInSeconds: (() { final guardedValue = map['maximumBatchingWindowInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maximumRecordAgeInSeconds: (() { final guardedValue = map['maximumRecordAgeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maximumRetryAttempts: (() { final guardedValue = map['maximumRetryAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      onPartialBatchItemFailure: (() { final guardedValue = map['onPartialBatchItemFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parallelizationFactor: (() { final guardedValue = map['parallelizationFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      startingPosition: pulumi.Input.fromValue(map['startingPosition'] as String),
    );
  }
}
