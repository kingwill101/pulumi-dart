// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceSubscriptionDlqPolicy {
  /// The queue to which dead-letter messages are delivered.
  final pulumi.Input<String>? deadLetterTargetQueue;
  /// Specifies whether to enable the dead-letter message delivery. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ServiceSubscriptionDlqPolicy].
  /// [deadLetterTargetQueue] The queue to which dead-letter messages are delivered.
  /// [enabled] Specifies whether to enable the dead-letter message delivery. Valid values: `true`, `false`.
  const ServiceSubscriptionDlqPolicy({
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
      deadLetterTargetQueue: (() { final guardedValue = map['deadLetterTargetQueue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

