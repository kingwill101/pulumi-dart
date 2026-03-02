// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Batching configuration
class BatchingConfiguration {
  /// Batching latency in seconds.
  final pulumi.Input<int>? latencySeconds;
  /// Maximum number of messages in a batch.
  final pulumi.Input<int>? maxMessages;

  /// Creates a new [BatchingConfiguration].
  /// [latencySeconds] Batching latency in seconds.
  /// [maxMessages] Maximum number of messages in a batch.
  BatchingConfiguration({
    this.latencySeconds,
    this.maxMessages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latencySeconds': ?latencySeconds,
      'maxMessages': ?maxMessages,
    };
  }

  factory BatchingConfiguration.fromMap(Map<String, dynamic> map) {
    return BatchingConfiguration(
      latencySeconds: map['latencySeconds'] == null ? null : (map['latencySeconds']! as int).input(),
      maxMessages: map['maxMessages'] == null ? null : (map['maxMessages']! as int).input(),
    );
  }
}

