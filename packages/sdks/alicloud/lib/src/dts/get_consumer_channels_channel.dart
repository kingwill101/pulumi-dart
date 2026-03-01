// ignore_for_file: unused_element, unnecessary_cast


class GetConsumerChannelsChannel {
  /// The ID of the consumer group.
  final String consumerGroupId;
  /// The name of the consumer group.
  final String consumerGroupName;
  /// The username of the consumer group.
  final String consumerGroupUserName;
  /// The time point when the client consumed the last message in the subscription channel.
  final String consumptionCheckpoint;
  /// The ID of the Consumer Channel.
  final String id;
  /// The message delay time, for the current time data subscription channel in the earliest time of unconsumed messages of the difference, in Unix timestamp format, which is measured in seconds.
  final int messageDelay;
  /// The total number of unconsumed messages.
  final int unconsumedData;

  /// Creates a new [GetConsumerChannelsChannel].
  /// [consumerGroupId] The ID of the consumer group.
  /// [consumerGroupName] The name of the consumer group.
  /// [consumerGroupUserName] The username of the consumer group.
  /// [consumptionCheckpoint] The time point when the client consumed the last message in the subscription channel.
  /// [id] The ID of the Consumer Channel.
  /// [messageDelay] The message delay time, for the current time data subscription channel in the earliest time of unconsumed messages of the difference, in Unix timestamp format, which is measured in seconds.
  /// [unconsumedData] The total number of unconsumed messages.
  GetConsumerChannelsChannel({
    required this.consumerGroupId,
    required this.consumerGroupName,
    required this.consumerGroupUserName,
    required this.consumptionCheckpoint,
    required this.id,
    required this.messageDelay,
    required this.unconsumedData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupId': consumerGroupId,
      'consumerGroupName': consumerGroupName,
      'consumerGroupUserName': consumerGroupUserName,
      'consumptionCheckpoint': consumptionCheckpoint,
      'id': id,
      'messageDelay': messageDelay,
      'unconsumedData': unconsumedData,
    };
  }

  factory GetConsumerChannelsChannel.fromMap(Map<String, dynamic> map) {
    return GetConsumerChannelsChannel(
      consumerGroupId: map['consumerGroupId'] as String,
      consumerGroupName: map['consumerGroupName'] as String,
      consumerGroupUserName: map['consumerGroupUserName'] as String,
      consumptionCheckpoint: map['consumptionCheckpoint'] as String,
      id: map['id'] as String,
      messageDelay: map['messageDelay'] as int,
      unconsumedData: map['unconsumedData'] as int,
    );
  }
}

