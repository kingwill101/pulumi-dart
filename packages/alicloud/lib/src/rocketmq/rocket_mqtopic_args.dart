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
    required String instanceId,
    int? maxSendTps,
    String? messageType,
    String? remark,
    required String topicName,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      maxSendTps = pulumi.Input.asOptionalInput<int>(maxSendTps),
      messageType = pulumi.Input.asOptionalInput<String>(messageType),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      topicName = pulumi.Input.asInput<String>(topicName);

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
      instanceId: map['instanceId'] as String,
      maxSendTps: map['maxSendTps'] == null ? null : map['maxSendTps'] as int,
      messageType: map['messageType'] == null ? null : map['messageType'] as String,
      remark: map['remark'] == null ? null : map['remark'] as String,
      topicName: map['topicName'] as String,
    );
  }
}

