// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kafka endpoint Batching properties
class DataflowEndpointKafkaBatching {
  /// Batching latency in milliseconds.
  final pulumi.Input<int>? latencyMs;
  /// Maximum number of bytes in a batch.
  final pulumi.Input<int>? maxBytes;
  /// Maximum number of messages in a batch.
  final pulumi.Input<int>? maxMessages;
  /// Mode for batching.
  final pulumi.Input<String>? mode;

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
      latencyMs: map['latencyMs'] == null ? null : (map['latencyMs'] as int).input(),
      maxBytes: map['maxBytes'] == null ? null : (map['maxBytes'] as int).input(),
      maxMessages: map['maxMessages'] == null ? null : (map['maxMessages'] as int).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
    );
  }
}

