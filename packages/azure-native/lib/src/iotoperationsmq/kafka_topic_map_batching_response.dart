// ignore_for_file: unused_element, unnecessary_cast


/// Kafka TopicMap Batching properties
class KafkaTopicMapBatchingResponse {
  /// The setting to enable or disable batching.
  final bool? enabled;
  /// The latency of message batching.
  final int? latencyMs;
  /// The maximum bytes to send in a batch.
  final double? maxBytes;
  /// The maximum messages to send in a batch.
  final double? maxMessages;

  /// Creates a new [KafkaTopicMapBatchingResponse].
  /// [enabled] The setting to enable or disable batching.
  /// [latencyMs] The latency of message batching.
  /// [maxBytes] The maximum bytes to send in a batch.
  /// [maxMessages] The maximum messages to send in a batch.
  KafkaTopicMapBatchingResponse({
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

  factory KafkaTopicMapBatchingResponse.fromMap(Map<String, dynamic> map) {
    return KafkaTopicMapBatchingResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      latencyMs: map['latencyMs'] == null ? null : map['latencyMs'] as int,
      maxBytes: map['maxBytes'] == null ? null : map['maxBytes'] as double,
      maxMessages: map['maxMessages'] == null ? null : map['maxMessages'] as double,
    );
  }
}

