// ignore_for_file: unused_element, unnecessary_cast


/// Batching configuration
class BatchingConfiguration {
  /// Batching latency in seconds.
  final int? latencySeconds;
  /// Maximum number of messages in a batch.
  final int? maxMessages;

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
      latencySeconds: map['latencySeconds'] == null ? null : map['latencySeconds'] as int,
      maxMessages: map['maxMessages'] == null ? null : map['maxMessages'] as int,
    );
  }
}

