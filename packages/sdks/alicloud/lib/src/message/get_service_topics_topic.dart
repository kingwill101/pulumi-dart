// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTopicsTopic {
  /// The time when the topic was created. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  final pulumi.Input<int> createTime;
  /// The id of the Topic. Its value is same as Topic Name.
  final pulumi.Input<String> id;
  /// The time when the topic was last modified. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  final pulumi.Input<int> lastModifyTime;
  /// Indicates whether the log management feature is enabled.
  final pulumi.Input<bool> loggingEnabled;
  /// The maximum size of a message body that can be sent to the topic. Unit: bytes.
  final pulumi.Input<int> maxMessageSize;
  /// The number of messages in the topic.
  final pulumi.Input<int> messageCount;
  /// The maximum period for which a message can be retained in the topic. A message that is sent to the topic can be retained for a specified period. After the specified period ends, the message is deleted no matter whether it is pushed to the specified endpoints. Unit: seconds.
  final pulumi.Input<int> messageRetentionPeriod;
  /// The inner url of the topic.
  final pulumi.Input<String> topicInnerUrl;
  /// The name of the topic.
  final pulumi.Input<String> topicName;
  /// The url of the topic.
  final pulumi.Input<String> topicUrl;

  /// Creates a new [GetServiceTopicsTopic].
  /// [createTime] The time when the topic was created. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  /// [id] The id of the Topic. Its value is same as Topic Name.
  /// [lastModifyTime] The time when the topic was last modified. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  /// [loggingEnabled] Indicates whether the log management feature is enabled.
  /// [maxMessageSize] The maximum size of a message body that can be sent to the topic. Unit: bytes.
  /// [messageCount] The number of messages in the topic.
  /// [messageRetentionPeriod] The maximum period for which a message can be retained in the topic. A message that is sent to the topic can be retained for a specified period. After the specified period ends, the message is deleted no matter whether it is pushed to the specified endpoints. Unit: seconds.
  /// [topicInnerUrl] The inner url of the topic.
  /// [topicName] The name of the topic.
  /// [topicUrl] The url of the topic.
  const GetServiceTopicsTopic({
    required this.createTime,
    required this.id,
    required this.lastModifyTime,
    required this.loggingEnabled,
    required this.maxMessageSize,
    required this.messageCount,
    required this.messageRetentionPeriod,
    required this.topicInnerUrl,
    required this.topicName,
    required this.topicUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'id': id,
      'lastModifyTime': lastModifyTime,
      'loggingEnabled': loggingEnabled,
      'maxMessageSize': maxMessageSize,
      'messageCount': messageCount,
      'messageRetentionPeriod': messageRetentionPeriod,
      'topicInnerUrl': topicInnerUrl,
      'topicName': topicName,
      'topicUrl': topicUrl,
    };
  }

  factory GetServiceTopicsTopic.fromMap(Map<String, dynamic> map) {
    return GetServiceTopicsTopic(
      createTime: pulumi.Input.fromValue(map['createTime'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastModifyTime: pulumi.Input.fromValue(map['lastModifyTime'] as int),
      loggingEnabled: pulumi.Input.fromValue(map['loggingEnabled'] as bool),
      maxMessageSize: pulumi.Input.fromValue(map['maxMessageSize'] as int),
      messageCount: pulumi.Input.fromValue(map['messageCount'] as int),
      messageRetentionPeriod: pulumi.Input.fromValue(map['messageRetentionPeriod'] as int),
      topicInnerUrl: pulumi.Input.fromValue(map['topicInnerUrl'] as String),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
      topicUrl: pulumi.Input.fromValue(map['topicUrl'] as String),
    );
  }
}

