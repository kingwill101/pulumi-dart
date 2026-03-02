// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeSourceParametersSqsQueueParameters {
  /// The maximum number of records to include in each batch. Maximum value of 10000.
  final pulumi.Input<int>? batchSize;
  /// The maximum length of a time to wait for events. Maximum value of 300.
  final pulumi.Input<int>? maximumBatchingWindowInSeconds;

  /// Creates a new [PipeSourceParametersSqsQueueParameters].
  /// [batchSize] The maximum number of records to include in each batch. Maximum value of 10000.
  /// [maximumBatchingWindowInSeconds] The maximum length of a time to wait for events. Maximum value of 300.
  PipeSourceParametersSqsQueueParameters({
    this.batchSize,
    this.maximumBatchingWindowInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'maximumBatchingWindowInSeconds': ?maximumBatchingWindowInSeconds,
    };
  }

  factory PipeSourceParametersSqsQueueParameters.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersSqsQueueParameters(
      batchSize: map['batchSize'] == null ? null : (map['batchSize'] as int).input(),
      maximumBatchingWindowInSeconds: map['maximumBatchingWindowInSeconds'] == null ? null : (map['maximumBatchingWindowInSeconds'] as int).input(),
    );
  }
}

