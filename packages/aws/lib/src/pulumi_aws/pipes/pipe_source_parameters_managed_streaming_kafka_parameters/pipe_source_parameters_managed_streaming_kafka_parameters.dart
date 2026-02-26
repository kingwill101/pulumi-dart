// ignore_for_file: unused_element, unnecessary_cast

import '../pipe_source_parameters_managed_streaming_kafka_parameters_credentials/pipe_source_parameters_managed_streaming_kafka_parameters_credentials.dart';

class PipeSourceParametersManagedStreamingKafkaParameters {
  /// The maximum number of records to include in each batch. Maximum value of 10000.
  final int? batchSize;

  /// The name of the destination queue to consume. Maximum value of 200.
  final String? consumerGroupId;

  /// The credentials needed to access the resource. Detailed below.
  final PipeSourceParametersManagedStreamingKafkaParametersCredentials?
      credentials;

  /// The maximum length of a time to wait for events. Maximum value of 300.
  final int? maximumBatchingWindowInSeconds;

  /// The position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  final String? startingPosition;

  /// The name of the topic that the pipe will read from. Maximum length of 249.
  final String topicName;

  PipeSourceParametersManagedStreamingKafkaParameters({
    this.batchSize,
    this.consumerGroupId,
    this.credentials,
    this.maximumBatchingWindowInSeconds,
    this.startingPosition,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchSizeValue = batchSize;
    if (batchSizeValue != null) {
      map['batchSize'] = batchSizeValue;
    }
    final consumerGroupIdValue = consumerGroupId;
    if (consumerGroupIdValue != null) {
      map['consumerGroupId'] = consumerGroupIdValue;
    }
    final credentialsValue = credentials;
    if (credentialsValue != null) {
      map['credentials'] = credentialsValue.toMap();
    }
    final maximumBatchingWindowInSecondsValue = maximumBatchingWindowInSeconds;
    if (maximumBatchingWindowInSecondsValue != null) {
      map['maximumBatchingWindowInSeconds'] =
          maximumBatchingWindowInSecondsValue;
    }
    final startingPositionValue = startingPosition;
    if (startingPositionValue != null) {
      map['startingPosition'] = startingPositionValue;
    }
    map['topicName'] = topicName;
    return map;
  }

  factory PipeSourceParametersManagedStreamingKafkaParameters.fromMap(
      Map<String, dynamic> map) {
    return PipeSourceParametersManagedStreamingKafkaParameters(
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      consumerGroupId: map['consumerGroupId'] == null
          ? null
          : map['consumerGroupId'] as String,
      credentials: map['credentials'] == null
          ? null
          : PipeSourceParametersManagedStreamingKafkaParametersCredentials
              .fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      maximumBatchingWindowInSeconds:
          map['maximumBatchingWindowInSeconds'] == null
              ? null
              : map['maximumBatchingWindowInSeconds'] as int,
      startingPosition: map['startingPosition'] == null
          ? null
          : map['startingPosition'] as String,
      topicName: map['topicName'] as String,
    );
  }
}
