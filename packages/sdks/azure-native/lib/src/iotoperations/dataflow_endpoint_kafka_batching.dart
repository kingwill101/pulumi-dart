// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kafka endpoint Batching properties
class DataflowEndpointKafkaBatching {
  /// Batching latency in milliseconds.
  final pulumi.Input<int?>? latencyMs;
  /// Maximum number of bytes in a batch.
  final pulumi.Input<int?>? maxBytes;
  /// Maximum number of messages in a batch.
  final pulumi.Input<int?>? maxMessages;
  /// Mode for batching.
  final pulumi.Input<dynamic>? mode;

  /// Creates a new [DataflowEndpointKafkaBatching].
  /// [latencyMs] Batching latency in milliseconds.
  /// [maxBytes] Maximum number of bytes in a batch.
  /// [maxMessages] Maximum number of messages in a batch.
  /// [mode] Mode for batching.
  DataflowEndpointKafkaBatching({
    pulumi.Input<int?>? latencyMs,
    pulumi.Input<int?>? maxBytes,
    pulumi.Input<int?>? maxMessages,
    pulumi.Input<dynamic>? mode,
  }) : latencyMs = latencyMs ?? pulumi.Input.fromValue(5), maxBytes = maxBytes ?? pulumi.Input.fromValue(1000000), maxMessages = maxMessages ?? pulumi.Input.fromValue(100000), mode = mode ?? pulumi.Input.fromValue('Enabled');

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
      latencyMs: (() { final guardedValue = map['latencyMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxBytes: (() { final guardedValue = map['maxBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxMessages: (() { final guardedValue = map['maxMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
