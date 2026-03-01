// ignore_for_file: unused_element, unnecessary_cast


class ServiceSubscriptionDlqPolicy {
  /// The queue to which dead-letter messages are delivered.
  final String? deadLetterTargetQueue;
  /// Specifies whether to enable the dead-letter message delivery. Valid values: `true`, `false`.
  final bool? enabled;

  /// Creates a new [ServiceSubscriptionDlqPolicy].
  /// [deadLetterTargetQueue] The queue to which dead-letter messages are delivered.
  /// [enabled] Specifies whether to enable the dead-letter message delivery. Valid values: `true`, `false`.
  ServiceSubscriptionDlqPolicy({
    this.deadLetterTargetQueue,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterTargetQueue': ?deadLetterTargetQueue,
      'enabled': ?enabled,
    };
  }

  factory ServiceSubscriptionDlqPolicy.fromMap(Map<String, dynamic> map) {
    return ServiceSubscriptionDlqPolicy(
      deadLetterTargetQueue: map['deadLetterTargetQueue'] == null ? null : map['deadLetterTargetQueue'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

