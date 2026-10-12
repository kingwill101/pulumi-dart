// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeSourceParametersSqsQueueParameters {
  final pulumi.Input<int?>? batchSize;
  final pulumi.Input<int?>? maximumBatchingWindowInSeconds;

  /// Creates a new [PipeSourceParametersSqsQueueParameters].
  /// [batchSize] Optional.
  /// [maximumBatchingWindowInSeconds] Optional.
  const PipeSourceParametersSqsQueueParameters({
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
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maximumBatchingWindowInSeconds: (() { final guardedValue = map['maximumBatchingWindowInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
