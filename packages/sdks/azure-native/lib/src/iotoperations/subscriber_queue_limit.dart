// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings of Subscriber Queue Limit.
class SubscriberQueueLimit {
  /// The maximum length of the queue before messages start getting dropped.
  final pulumi.Input<double>? length;

  /// The strategy to use for dropping messages from the queue.
  final pulumi.Input<String>? strategy;

  /// Creates a new [SubscriberQueueLimit].
  /// [length] The maximum length of the queue before messages start getting dropped.
  /// [strategy] The strategy to use for dropping messages from the queue.
  SubscriberQueueLimit({this.length, this.strategy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'length': ?length, 'strategy': ?strategy};
  }

  factory SubscriberQueueLimit.fromMap(Map<String, dynamic> map) {
    return SubscriberQueueLimit(
      length: (() {
        final guardedValue = map['length'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      strategy: (() {
        final guardedValue = map['strategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
