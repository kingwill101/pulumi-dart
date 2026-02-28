// ignore_for_file: unused_element, unnecessary_cast


class RoutingProfileQueueConfig {
  /// Specifies the channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are `VOICE`, `CHAT`, `TASK`.
  final String channel;
  /// Specifies the delay, in seconds, that a contact should be in the queue before they are routed to an available agent
  final int delay;
  /// Specifies the order in which contacts are to be handled for the queue.
  final int priority;
  /// ARN for the queue.
  final String? queueArn;
  /// Specifies the identifier for the queue.
  final String queueId;
  /// Name for the queue.
  final String? queueName;

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
      channel: map['channel'] as String,
      delay: map['delay'] as int,
      priority: map['priority'] as int,
      queueArn: map['queueArn'] == null ? null : map['queueArn'] as String,
      queueId: map['queueId'] as String,
      queueName: map['queueName'] == null ? null : map['queueName'] as String,
    );
  }
}

