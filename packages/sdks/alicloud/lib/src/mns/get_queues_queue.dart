// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQueuesQueue {
  /// This attribute defines the length of time, in seconds, after which every message sent to the queue is dequeued.
  final pulumi.Input<int> delaySeconds;
  /// The id of the queue, The value is set to `name`.
  final pulumi.Input<String> id;
  /// This indicates the maximum length, in bytes, of any message body sent to the queue.
  final pulumi.Input<int> maximumMessageSize;
  /// Messages are deleted from the queue after a specified length of time, whether they have been activated or not. This attribute defines the viability period, in seconds, for every message in the queue.
  final pulumi.Input<int> messageRetentionPeriod;
  /// The name of the queue
  final pulumi.Input<String> name;
  /// Long polling is measured in seconds. When this attribute is set to 0, long polling is disabled. When it is not set to 0, long polling is enabled and message dequeue requests will be processed only when valid messages are received or when long polling times out.
  final pulumi.Input<int> pollingWaitSeconds;
  /// Dequeued messages change from active (visible) status to inactive (invisible) status. This attribute defines the length of time, in seconds, that messages remain invisible. Messages return to active status after the set period.
  final pulumi.Input<int> visibilityTimeouts;

  /// Creates a new [GetQueuesQueue].
  /// [delaySeconds] This attribute defines the length of time, in seconds, after which every message sent to the queue is dequeued.
  /// [id] The id of the queue, The value is set to `name`.
  /// [maximumMessageSize] This indicates the maximum length, in bytes, of any message body sent to the queue.
  /// [messageRetentionPeriod] Messages are deleted from the queue after a specified length of time, whether they have been activated or not. This attribute defines the viability period, in seconds, for every message in the queue.
  /// [name] The name of the queue
  /// [pollingWaitSeconds] Long polling is measured in seconds. When this attribute is set to 0, long polling is disabled. When it is not set to 0, long polling is enabled and message dequeue requests will be processed only when valid messages are received or when long polling times out.
  /// [visibilityTimeouts] Dequeued messages change from active (visible) status to inactive (invisible) status. This attribute defines the length of time, in seconds, that messages remain invisible. Messages return to active status after the set period.
  GetQueuesQueue({
    required this.delaySeconds,
    required this.id,
    required this.maximumMessageSize,
    required this.messageRetentionPeriod,
    required this.name,
    required this.pollingWaitSeconds,
    required this.visibilityTimeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delaySeconds': delaySeconds,
      'id': id,
      'maximumMessageSize': maximumMessageSize,
      'messageRetentionPeriod': messageRetentionPeriod,
      'name': name,
      'pollingWaitSeconds': pollingWaitSeconds,
      'visibilityTimeouts': visibilityTimeouts,
    };
  }

  factory GetQueuesQueue.fromMap(Map<String, dynamic> map) {
    return GetQueuesQueue(
      delaySeconds: (map['delaySeconds'] as int).input(),
      id: (map['id'] as String).input(),
      maximumMessageSize: (map['maximumMessageSize'] as int).input(),
      messageRetentionPeriod: (map['messageRetentionPeriod'] as int).input(),
      name: (map['name'] as String).input(),
      pollingWaitSeconds: (map['pollingWaitSeconds'] as int).input(),
      visibilityTimeouts: (map['visibilityTimeouts'] as int).input(),
    );
  }
}

