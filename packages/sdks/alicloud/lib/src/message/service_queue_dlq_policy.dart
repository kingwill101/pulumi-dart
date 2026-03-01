// ignore_for_file: unused_element, unnecessary_cast


class ServiceQueueDlqPolicy {
  /// The queue to which dead-letter messages are delivered.
  final String? deadLetterTargetQueue;
  /// Specifies whether to enable the dead-letter message delivery. Valid values: `true`, `false`.
  final bool? enabled;
  /// The maximum number of retries.
  final int? maxReceiveCount;

  /// Creates a new [ServiceQueueDlqPolicy].
  /// [deadLetterTargetQueue] The queue to which dead-letter messages are delivered.
  /// [enabled] Specifies whether to enable the dead-letter message delivery. Valid values: `true`, `false`.
  /// [maxReceiveCount] The maximum number of retries.
  ServiceQueueDlqPolicy({
    this.deadLetterTargetQueue,
    this.enabled,
    this.maxReceiveCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterTargetQueue': ?deadLetterTargetQueue,
      'enabled': ?enabled,
      'maxReceiveCount': ?maxReceiveCount,
    };
  }

  factory ServiceQueueDlqPolicy.fromMap(Map<String, dynamic> map) {
    return ServiceQueueDlqPolicy(
      deadLetterTargetQueue: map['deadLetterTargetQueue'] == null ? null : map['deadLetterTargetQueue'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      maxReceiveCount: map['maxReceiveCount'] == null ? null : map['maxReceiveCount'] as int,
    );
  }
}

