// ignore_for_file: unused_element, unnecessary_cast


/// Kafka endpoint Batching properties
class DataflowEndpointKafkaBatching {
  /// Batching latency in milliseconds.
  final int? latencyMs;
  /// Maximum number of bytes in a batch.
  final int? maxBytes;
  /// Maximum number of messages in a batch.
  final int? maxMessages;
  /// Mode for batching.
  final String? mode;

  /// Creates a new [DataflowEndpointKafkaBatching].
  /// [latencyMs] Batching latency in milliseconds.
  /// [maxBytes] Maximum number of bytes in a batch.
  /// [maxMessages] Maximum number of messages in a batch.
  /// [mode] Mode for batching.
  DataflowEndpointKafkaBatching({
    this.latencyMs,
    this.maxBytes,
    this.maxMessages,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latencyMs': ?latencyMs,
      'maxBytes': ?maxBytes,
      'maxMessages': ?maxMessages,
      'mode': ?mode,
    };
  }

  factory DataflowEndpointKafkaBatching.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointKafkaBatching(
      latencyMs: map['latencyMs'] == null ? null : map['latencyMs'] as int,
      maxBytes: map['maxBytes'] == null ? null : map['maxBytes'] as int,
      maxMessages: map['maxMessages'] == null ? null : map['maxMessages'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

