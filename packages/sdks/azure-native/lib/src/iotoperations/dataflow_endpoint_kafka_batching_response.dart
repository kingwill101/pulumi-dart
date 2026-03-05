// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kafka endpoint Batching properties
class DataflowEndpointKafkaBatchingResponse {
  /// Batching latency in milliseconds.
  final pulumi.Input<int>? latencyMs;
  /// Maximum number of bytes in a batch.
  final pulumi.Input<int>? maxBytes;
  /// Maximum number of messages in a batch.
  final pulumi.Input<int>? maxMessages;
  /// Mode for batching.
  final pulumi.Input<String>? mode;

  /// Creates a new [DataflowEndpointKafkaBatchingResponse].
  /// [latencyMs] Batching latency in milliseconds.
  /// [maxBytes] Maximum number of bytes in a batch.
  /// [maxMessages] Maximum number of messages in a batch.
  /// [mode] Mode for batching.
  DataflowEndpointKafkaBatchingResponse({
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

  factory DataflowEndpointKafkaBatchingResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointKafkaBatchingResponse(
      latencyMs: (() { final guardedValue = map['latencyMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxBytes: (() { final guardedValue = map['maxBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxMessages: (() { final guardedValue = map['maxMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

