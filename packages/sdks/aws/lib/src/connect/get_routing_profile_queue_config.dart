// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoutingProfileQueueConfig {
  /// Channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are `VOICE`, `CHAT`, `TASK`.
  final pulumi.Input<String> channel;

  /// Delay, in seconds, that a contact should be in the queue before they are routed to an available agent
  final pulumi.Input<int> delay;

  /// Order in which contacts are to be handled for the queue.
  final pulumi.Input<int> priority;

  /// ARN for the queue.
  final pulumi.Input<String> queueArn;

  /// Identifier for the queue.
  final pulumi.Input<String> queueId;

  /// Name for the queue.
  final pulumi.Input<String> queueName;

  /// Creates a new [GetRoutingProfileQueueConfig].
  /// [channel] Channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are `VOICE`, `CHAT`, `TASK`.
  /// [delay] Delay, in seconds, that a contact should be in the queue before they are routed to an available agent
  /// [priority] Order in which contacts are to be handled for the queue.
  /// [queueArn] ARN for the queue.
  /// [queueId] Identifier for the queue.
  /// [queueName] Name for the queue.
  GetRoutingProfileQueueConfig({
    required this.channel,
    required this.delay,
    required this.priority,
    required this.queueArn,
    required this.queueId,
    required this.queueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'delay': delay,
      'priority': priority,
      'queueArn': queueArn,
      'queueId': queueId,
      'queueName': queueName,
    };
  }

  factory GetRoutingProfileQueueConfig.fromMap(Map<String, dynamic> map) {
    return GetRoutingProfileQueueConfig(
      channel: pulumi.Input.fromValue(map['channel'] as String),
      delay: pulumi.Input.fromValue(map['delay'] as int),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      queueArn: pulumi.Input.fromValue(map['queueArn'] as String),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
    );
  }
}
