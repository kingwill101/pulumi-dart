// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceQueueDlqPolicy {
  /// The queue to which dead-letter messages are delivered.
  final pulumi.Input<String>? deadLetterTargetQueue;
  /// Specifies whether to enable the dead-letter message delivery. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enabled;
  /// The maximum number of retries.
  final pulumi.Input<int>? maxReceiveCount;

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
      deadLetterTargetQueue: map['deadLetterTargetQueue'] == null ? null : (map['deadLetterTargetQueue']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      maxReceiveCount: map['maxReceiveCount'] == null ? null : (map['maxReceiveCount']! as int).input(),
    );
  }
}

