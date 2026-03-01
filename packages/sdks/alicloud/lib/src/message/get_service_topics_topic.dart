// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTopicsTopic {
  /// The time when the topic was created. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  final int createTime;
  /// The id of the Topic. Its value is same as Topic Name.
  final String id;
  /// The time when the topic was last modified. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  final int lastModifyTime;
  /// Indicates whether the log management feature is enabled.
  final bool loggingEnabled;
  /// The maximum size of a message body that can be sent to the topic. Unit: bytes.
  final int maxMessageSize;
  /// The number of messages in the topic.
  final int messageCount;
  /// The maximum period for which a message can be retained in the topic. A message that is sent to the topic can be retained for a specified period. After the specified period ends, the message is deleted no matter whether it is pushed to the specified endpoints. Unit: seconds.
  final int messageRetentionPeriod;
  /// The inner url of the topic.
  final String topicInnerUrl;
  /// The name of the topic.
  final String topicName;
  /// The url of the topic.
  final String topicUrl;

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
  GetServiceTopicsTopic({
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
      createTime: map['createTime'] as int,
      id: map['id'] as String,
      lastModifyTime: map['lastModifyTime'] as int,
      loggingEnabled: map['loggingEnabled'] as bool,
      maxMessageSize: map['maxMessageSize'] as int,
      messageCount: map['messageCount'] as int,
      messageRetentionPeriod: map['messageRetentionPeriod'] as int,
      topicInnerUrl: map['topicInnerUrl'] as String,
      topicName: map['topicName'] as String,
      topicUrl: map['topicUrl'] as String,
    );
  }
}

