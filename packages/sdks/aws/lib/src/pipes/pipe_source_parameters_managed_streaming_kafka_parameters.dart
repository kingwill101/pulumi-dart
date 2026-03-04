// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_source_parameters_managed_streaming_kafka_parameters_credentials.dart';

class PipeSourceParametersManagedStreamingKafkaParameters {
  /// The maximum number of records to include in each batch. Maximum value of 10000.
  final pulumi.Input<int>? batchSize;

  /// The name of the destination queue to consume. Maximum value of 200.
  final pulumi.Input<String>? consumerGroupId;

  /// The credentials needed to access the resource. Detailed below.
  final pulumi.Input<
    PipeSourceParametersManagedStreamingKafkaParametersCredentials
  >?
  credentials;

  /// The maximum length of a time to wait for events. Maximum value of 300.
  final pulumi.Input<int>? maximumBatchingWindowInSeconds;

  /// The position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  final pulumi.Input<String>? startingPosition;

  /// The name of the topic that the pipe will read from. Maximum length of 249.
  final pulumi.Input<String> topicName;

  /// Creates a new [PipeSourceParametersManagedStreamingKafkaParameters].
  /// [batchSize] The maximum number of records to include in each batch. Maximum value of 10000.
  /// [consumerGroupId] The name of the destination queue to consume. Maximum value of 200.
  /// [credentials] The credentials needed to access the resource. Detailed below.
  /// [maximumBatchingWindowInSeconds] The maximum length of a time to wait for events. Maximum value of 300.
  /// [startingPosition] The position in a stream from which to start reading. Valid values: TRIM_HORIZON, LATEST.
  /// [topicName] The name of the topic that the pipe will read from. Maximum length of 249.
  PipeSourceParametersManagedStreamingKafkaParameters({
    this.batchSize,
    this.consumerGroupId,
    this.credentials,
    this.maximumBatchingWindowInSeconds,
    this.startingPosition,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'consumerGroupId': ?consumerGroupId,
      'credentials':
          ?pulumi.Input.mapOptionalInputValue<
            PipeSourceParametersManagedStreamingKafkaParametersCredentials,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
      'maximumBatchingWindowInSeconds': ?maximumBatchingWindowInSeconds,
      'startingPosition': ?startingPosition,
      'topicName': topicName,
    };
  }

  factory PipeSourceParametersManagedStreamingKafkaParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeSourceParametersManagedStreamingKafkaParameters(
      batchSize: (() {
        final guardedValue = map['batchSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      consumerGroupId: (() {
        final guardedValue = map['consumerGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      credentials: (() {
        final guardedValue = map['credentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PipeSourceParametersManagedStreamingKafkaParametersCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maximumBatchingWindowInSeconds: (() {
        final guardedValue = map['maximumBatchingWindowInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      startingPosition: (() {
        final guardedValue = map['startingPosition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}
