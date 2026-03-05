// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kafka TopicMap Batching properties
class KafkaTopicMapBatching {
  /// The setting to enable or disable batching.
  final pulumi.Input<bool>? enabled;
  /// The latency of message batching.
  final pulumi.Input<int>? latencyMs;
  /// The maximum bytes to send in a batch.
  final pulumi.Input<double>? maxBytes;
  /// The maximum messages to send in a batch.
  final pulumi.Input<double>? maxMessages;

  /// Creates a new [KafkaTopicMapBatching].
  /// [enabled] The setting to enable or disable batching.
  /// [latencyMs] The latency of message batching.
  /// [maxBytes] The maximum bytes to send in a batch.
  /// [maxMessages] The maximum messages to send in a batch.
  KafkaTopicMapBatching({
    this.enabled,
    this.latencyMs,
    this.maxBytes,
    this.maxMessages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'latencyMs': ?latencyMs,
      'maxBytes': ?maxBytes,
      'maxMessages': ?maxMessages,
    };
  }

  factory KafkaTopicMapBatching.fromMap(Map<String, dynamic> map) {
    return KafkaTopicMapBatching(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      latencyMs: (() { final guardedValue = map['latencyMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxBytes: (() { final guardedValue = map['maxBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxMessages: (() { final guardedValue = map['maxMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

