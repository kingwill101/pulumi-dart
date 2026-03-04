// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceQueuesQueue {
  /// The total number of messages that are in the Active state in the queue. The value is an approximate number.
  final pulumi.Input<int> activeMessages;

  /// The time when the queue was created. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  final pulumi.Input<int> createTime;

  /// The total number of the messages that are in the Delayed state in the queue. The value is an approximate number.
  final pulumi.Input<int> delayMessages;

  /// The delay period after which all messages that are sent to the queue can be consumed. Unit: seconds.
  final pulumi.Input<int> delaySeconds;

  /// The ID of the Queue. Its value is same as Queue Name.
  final pulumi.Input<String> id;

  /// The total number of the messages that are in the Inactive state in the queue. The value is an approximate number.
  final pulumi.Input<int> inactiveMessages;

  /// The time when the queue was last modified. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  final pulumi.Input<int> lastModifyTime;

  /// Indicates whether the log management feature is enabled for the queue.
  final pulumi.Input<bool> loggingEnabled;

  /// The maximum size of a message body that can be sent to the queue. Unit: bytes.
  final pulumi.Input<int> maximumMessageSize;

  /// The maximum period for which a message can be retained in the queue. A message that is sent to the queue can be retained for a specified period. After the specified period ends, the message is deleted no matter whether it is consumed. Unit: seconds.
  final pulumi.Input<int> messageRetentionPeriod;

  /// The maximum period for which a ReceiveMessage request waits if no message is available in the queue. Unit: seconds.
  final pulumi.Input<int> pollingWaitSeconds;

  /// The internal url of the queue.
  final pulumi.Input<String> queueInternalUrl;

  /// The name of the queue.
  final pulumi.Input<String> queueName;

  /// The url of the queue.
  final pulumi.Input<String> queueUrl;

  /// The invisibility period for which the received message remains the Inactive state. Unit: seconds.
  final pulumi.Input<int> visibilityTimeout;

  /// Creates a new [GetServiceQueuesQueue].
  /// [activeMessages] The total number of messages that are in the Active state in the queue. The value is an approximate number.
  /// [createTime] The time when the queue was created. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  /// [delayMessages] The total number of the messages that are in the Delayed state in the queue. The value is an approximate number.
  /// [delaySeconds] The delay period after which all messages that are sent to the queue can be consumed. Unit: seconds.
  /// [id] The ID of the Queue. Its value is same as Queue Name.
  /// [inactiveMessages] The total number of the messages that are in the Inactive state in the queue. The value is an approximate number.
  /// [lastModifyTime] The time when the queue was last modified. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  /// [loggingEnabled] Indicates whether the log management feature is enabled for the queue.
  /// [maximumMessageSize] The maximum size of a message body that can be sent to the queue. Unit: bytes.
  /// [messageRetentionPeriod] The maximum period for which a message can be retained in the queue. A message that is sent to the queue can be retained for a specified period. After the specified period ends, the message is deleted no matter whether it is consumed. Unit: seconds.
  /// [pollingWaitSeconds] The maximum period for which a ReceiveMessage request waits if no message is available in the queue. Unit: seconds.
  /// [queueInternalUrl] The internal url of the queue.
  /// [queueName] The name of the queue.
  /// [queueUrl] The url of the queue.
  /// [visibilityTimeout] The invisibility period for which the received message remains the Inactive state. Unit: seconds.
  GetServiceQueuesQueue({
    required this.activeMessages,
    required this.createTime,
    required this.delayMessages,
    required this.delaySeconds,
    required this.id,
    required this.inactiveMessages,
    required this.lastModifyTime,
    required this.loggingEnabled,
    required this.maximumMessageSize,
    required this.messageRetentionPeriod,
    required this.pollingWaitSeconds,
    required this.queueInternalUrl,
    required this.queueName,
    required this.queueUrl,
    required this.visibilityTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeMessages': activeMessages,
      'createTime': createTime,
      'delayMessages': delayMessages,
      'delaySeconds': delaySeconds,
      'id': id,
      'inactiveMessages': inactiveMessages,
      'lastModifyTime': lastModifyTime,
      'loggingEnabled': loggingEnabled,
      'maximumMessageSize': maximumMessageSize,
      'messageRetentionPeriod': messageRetentionPeriod,
      'pollingWaitSeconds': pollingWaitSeconds,
      'queueInternalUrl': queueInternalUrl,
      'queueName': queueName,
      'queueUrl': queueUrl,
      'visibilityTimeout': visibilityTimeout,
    };
  }

  factory GetServiceQueuesQueue.fromMap(Map<String, dynamic> map) {
    return GetServiceQueuesQueue(
      activeMessages: pulumi.Input.fromValue(map['activeMessages'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as int),
      delayMessages: pulumi.Input.fromValue(map['delayMessages'] as int),
      delaySeconds: pulumi.Input.fromValue(map['delaySeconds'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      inactiveMessages: pulumi.Input.fromValue(map['inactiveMessages'] as int),
      lastModifyTime: pulumi.Input.fromValue(map['lastModifyTime'] as int),
      loggingEnabled: pulumi.Input.fromValue(map['loggingEnabled'] as bool),
      maximumMessageSize: pulumi.Input.fromValue(
        map['maximumMessageSize'] as int,
      ),
      messageRetentionPeriod: pulumi.Input.fromValue(
        map['messageRetentionPeriod'] as int,
      ),
      pollingWaitSeconds: pulumi.Input.fromValue(
        map['pollingWaitSeconds'] as int,
      ),
      queueInternalUrl: pulumi.Input.fromValue(
        map['queueInternalUrl'] as String,
      ),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
      queueUrl: pulumi.Input.fromValue(map['queueUrl'] as String),
      visibilityTimeout: pulumi.Input.fromValue(
        map['visibilityTimeout'] as int,
      ),
    );
  }
}
