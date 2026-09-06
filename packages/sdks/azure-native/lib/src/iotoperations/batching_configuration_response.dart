// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Batching configuration
class BatchingConfigurationResponse {
  /// Batching latency in seconds.
  final pulumi.Input<int?>? latencySeconds;
  /// Maximum number of messages in a batch.
  final pulumi.Input<int?>? maxMessages;

  /// Creates a new [BatchingConfigurationResponse].
  /// [latencySeconds] Batching latency in seconds.
  /// [maxMessages] Maximum number of messages in a batch.
  BatchingConfigurationResponse({
    pulumi.Input<int?>? latencySeconds,
    pulumi.Input<int?>? maxMessages,
  }) : latencySeconds = latencySeconds ?? pulumi.Input.fromValue(60), maxMessages = maxMessages ?? pulumi.Input.fromValue(100000);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latencySeconds': ?latencySeconds,
      'maxMessages': ?maxMessages,
    };
  }

  factory BatchingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BatchingConfigurationResponse(
      latencySeconds: (() { final guardedValue = map['latencySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxMessages: (() { final guardedValue = map['maxMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
