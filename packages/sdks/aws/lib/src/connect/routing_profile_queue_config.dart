// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutingProfileQueueConfig {
  /// Specifies the channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are `VOICE`, `CHAT`, `TASK`.
  final pulumi.Input<String> channel;

  /// Specifies the delay, in seconds, that a contact should be in the queue before they are routed to an available agent
  final pulumi.Input<int> delay;

  /// Specifies the order in which contacts are to be handled for the queue.
  final pulumi.Input<int> priority;

  /// ARN for the queue.
  final pulumi.Input<String>? queueArn;

  /// Specifies the identifier for the queue.
  final pulumi.Input<String> queueId;

  /// Name for the queue.
  final pulumi.Input<String>? queueName;

  /// Creates a new [RoutingProfileQueueConfig].
  /// [channel] Specifies the channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are `VOICE`, `CHAT`, `TASK`.
  /// [delay] Specifies the delay, in seconds, that a contact should be in the queue before they are routed to an available agent
  /// [priority] Specifies the order in which contacts are to be handled for the queue.
  /// [queueArn] ARN for the queue.
  /// [queueId] Specifies the identifier for the queue.
  /// [queueName] Name for the queue.
  RoutingProfileQueueConfig({
    required this.channel,
    required this.delay,
    required this.priority,
    this.queueArn,
    required this.queueId,
    this.queueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'delay': delay,
      'priority': priority,
      'queueArn': ?queueArn,
      'queueId': queueId,
      'queueName': ?queueName,
    };
  }

  factory RoutingProfileQueueConfig.fromMap(Map<String, dynamic> map) {
    return RoutingProfileQueueConfig(
      channel: pulumi.Input.fromValue(map['channel'] as String),
      delay: pulumi.Input.fromValue(map['delay'] as int),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      queueArn: (() {
        final guardedValue = map['queueArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
      queueName: (() {
        final guardedValue = map['queueName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
