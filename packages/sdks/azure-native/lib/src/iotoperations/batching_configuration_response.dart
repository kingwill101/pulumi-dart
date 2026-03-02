// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Batching configuration
class BatchingConfigurationResponse {
  /// Batching latency in seconds.
  final pulumi.Input<int>? latencySeconds;
  /// Maximum number of messages in a batch.
  final pulumi.Input<int>? maxMessages;

  /// Creates a new [BatchingConfigurationResponse].
  /// [latencySeconds] Batching latency in seconds.
  /// [maxMessages] Maximum number of messages in a batch.
  BatchingConfigurationResponse({
    this.latencySeconds,
    this.maxMessages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latencySeconds': ?latencySeconds,
      'maxMessages': ?maxMessages,
    };
  }

  factory BatchingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BatchingConfigurationResponse(
      latencySeconds: map['latencySeconds'] == null ? null : (map['latencySeconds']! as int).input(),
      maxMessages: map['maxMessages'] == null ? null : (map['maxMessages']! as int).input(),
    );
  }
}

