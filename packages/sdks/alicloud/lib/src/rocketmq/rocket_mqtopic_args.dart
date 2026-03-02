// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rocketmq_rocket_mqtopic_rocket_mqtopic_args_doc}
/// The set of arguments for RocketMQTopic.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_rocket_mqtopic_rocket_mqtopic_args_doc}
class RocketMQTopicArgs {
  /// Instance ID.
  final pulumi.Input<String> instanceId;
  /// The maximum TPS for message sending.
  final pulumi.Input<int>? maxSendTps;
  /// Message type.
  final pulumi.Input<String>? messageType;
  /// Custom remarks.
  final pulumi.Input<String>? remark;
  /// Topic name and identification.
  final pulumi.Input<String> topicName;

  /// Creates a new [RocketMQTopicArgs].
  /// [instanceId] Instance ID.
  /// [maxSendTps] The maximum TPS for message sending.
  /// [messageType] Message type.
  /// [remark] Custom remarks.
  /// [topicName] Topic name and identification.
  RocketMQTopicArgs({
    required this.instanceId,
    this.maxSendTps,
    this.messageType,
    this.remark,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'maxSendTps': ?maxSendTps,
      'messageType': ?messageType,
      'remark': ?remark,
      'topicName': topicName,
    };
  }

  factory RocketMQTopicArgs.fromMap(Map<String, dynamic> map) {
    return RocketMQTopicArgs(
      instanceId: (map['instanceId'] as String).input(),
      maxSendTps: map['maxSendTps'] == null ? null : (map['maxSendTps']! as int).input(),
      messageType: map['messageType'] == null ? null : (map['messageType']! as String).input(),
      remark: map['remark'] == null ? null : (map['remark']! as String).input(),
      topicName: (map['topicName'] as String).input(),
    );
  }
}

