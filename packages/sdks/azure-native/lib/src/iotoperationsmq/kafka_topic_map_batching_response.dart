// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kafka TopicMap Batching properties
class KafkaTopicMapBatchingResponse {
  /// The setting to enable or disable batching.
  final pulumi.Input<bool?>? enabled;
  /// The latency of message batching.
  final pulumi.Input<int?>? latencyMs;
  /// The maximum bytes to send in a batch.
  final pulumi.Input<double?>? maxBytes;
  /// The maximum messages to send in a batch.
  final pulumi.Input<double?>? maxMessages;

  /// Creates a new [KafkaTopicMapBatchingResponse].
  /// [enabled] The setting to enable or disable batching.
  /// [latencyMs] The latency of message batching.
  /// [maxBytes] The maximum bytes to send in a batch.
  /// [maxMessages] The maximum messages to send in a batch.
  KafkaTopicMapBatchingResponse({
    pulumi.Input<bool?>? enabled,
    pulumi.Input<int?>? latencyMs,
    pulumi.Input<double?>? maxBytes,
    pulumi.Input<double?>? maxMessages,
  }) : enabled = enabled ?? pulumi.Input.fromValue(false), latencyMs = latencyMs ?? pulumi.Input.fromValue(5), maxBytes = maxBytes ?? pulumi.Input.fromValue(1e+06), maxMessages = maxMessages ?? pulumi.Input.fromValue(100000);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'latencyMs': ?latencyMs,
      'maxBytes': ?maxBytes,
      'maxMessages': ?maxMessages,
    };
  }

  factory KafkaTopicMapBatchingResponse.fromMap(Map<String, dynamic> map) {
    return KafkaTopicMapBatchingResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      latencyMs: (() { final guardedValue = map['latencyMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxBytes: (() { final guardedValue = map['maxBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxMessages: (() { final guardedValue = map['maxMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
