// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConsumerChannelsChannel {
  /// The ID of the consumer group.
  final pulumi.Input<String> consumerGroupId;
  /// The name of the consumer group.
  final pulumi.Input<String> consumerGroupName;
  /// The username of the consumer group.
  final pulumi.Input<String> consumerGroupUserName;
  /// The time point when the client consumed the last message in the subscription channel.
  final pulumi.Input<String> consumptionCheckpoint;
  /// The ID of the Consumer Channel.
  final pulumi.Input<String> id;
  /// The message delay time, for the current time data subscription channel in the earliest time of unconsumed messages of the difference, in Unix timestamp format, which is measured in seconds.
  final pulumi.Input<int> messageDelay;
  /// The total number of unconsumed messages.
  final pulumi.Input<int> unconsumedData;

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
      consumerGroupId: pulumi.Input.fromValue(map['consumerGroupId'] as String),
      consumerGroupName: pulumi.Input.fromValue(map['consumerGroupName'] as String),
      consumerGroupUserName: pulumi.Input.fromValue(map['consumerGroupUserName'] as String),
      consumptionCheckpoint: pulumi.Input.fromValue(map['consumptionCheckpoint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      messageDelay: pulumi.Input.fromValue(map['messageDelay'] as int),
      unconsumedData: pulumi.Input.fromValue(map['unconsumedData'] as int),
    );
  }
}

