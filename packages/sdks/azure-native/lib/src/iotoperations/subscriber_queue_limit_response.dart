// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings of Subscriber Queue Limit.
class SubscriberQueueLimitResponse {
  /// The maximum length of the queue before messages start getting dropped.
  final pulumi.Input<double>? length;
  /// The strategy to use for dropping messages from the queue.
  final pulumi.Input<String>? strategy;

  /// Creates a new [SubscriberQueueLimitResponse].
  /// [length] The maximum length of the queue before messages start getting dropped.
  /// [strategy] The strategy to use for dropping messages from the queue.
  const SubscriberQueueLimitResponse({
    this.length,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'length': ?length,
      'strategy': ?strategy,
    };
  }

  factory SubscriberQueueLimitResponse.fromMap(Map<String, dynamic> map) {
    return SubscriberQueueLimitResponse(
      length: (() { final guardedValue = map['length']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
