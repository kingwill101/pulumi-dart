// ignore_for_file: unused_element, unnecessary_cast

class GetRoutingProfileQueueConfig {
  /// Channels agents can handle in the Contact Control Panel (CCP) for this routing profile. Valid values are `VOICE`, `CHAT`, `TASK`.
  final String channel;

  /// Delay, in seconds, that a contact should be in the queue before they are routed to an available agent
  final int delay;

  /// Order in which contacts are to be handled for the queue.
  final int priority;

  /// ARN for the queue.
  final String queueArn;

  /// Identifier for the queue.
  final String queueId;

  /// Name for the queue.
  final String queueName;

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
    final map = <String, dynamic>{};
    map['channel'] = channel;
    map['delay'] = delay;
    map['priority'] = priority;
    map['queueArn'] = queueArn;
    map['queueId'] = queueId;
    map['queueName'] = queueName;
    return map;
  }

  factory GetRoutingProfileQueueConfig.fromMap(Map<String, dynamic> map) {
    return GetRoutingProfileQueueConfig(
      channel: map['channel'] as String,
      delay: map['delay'] as int,
      priority: map['priority'] as int,
      queueArn: map['queueArn'] as String,
      queueId: map['queueId'] as String,
      queueName: map['queueName'] as String,
    );
  }
}
