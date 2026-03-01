// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RocketMQTopic resources.
class RocketMQTopicState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// Instance ID.
  final pulumi.Input<String>? instanceId;
  /// The maximum TPS for message sending.
  final pulumi.Input<int>? maxSendTps;
  /// Message type.
  final pulumi.Input<String>? messageType;
  /// (Available since v1.247.0) The region ID to which the instance belongs.
  final pulumi.Input<String>? regionId;
  /// Custom remarks.
  final pulumi.Input<String>? remark;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// Topic name and identification.
  final pulumi.Input<String>? topicName;

  /// Creates a new [RocketMQTopicState].
  /// [createTime] The creation time of the resource.
  /// [instanceId] Instance ID.
  /// [maxSendTps] The maximum TPS for message sending.
  /// [messageType] Message type.
  /// [regionId] (Available since v1.247.0) The region ID to which the instance belongs.
  /// [remark] Custom remarks.
  /// [status] The status of the resource.
  /// [topicName] Topic name and identification.
  RocketMQTopicState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? instanceId,
    pulumi.Output<int>? maxSendTps,
    pulumi.Output<String>? messageType,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? remark,
    pulumi.Output<String>? status,
    pulumi.Output<String>? topicName,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      maxSendTps = pulumi.Input.asOptionalInput<int>(maxSendTps),
      messageType = pulumi.Input.asOptionalInput<String>(messageType),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      status = pulumi.Input.asOptionalInput<String>(status),
      topicName = pulumi.Input.asOptionalInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'instanceId': ?instanceId,
      'maxSendTps': ?maxSendTps,
      'messageType': ?messageType,
      'regionId': ?regionId,
      'remark': ?remark,
      'status': ?status,
      'topicName': ?topicName,
    };
  }

  factory RocketMQTopicState.fromMap(Map<String, dynamic> map) {
    return RocketMQTopicState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      maxSendTps: map['maxSendTps'] == null ? null : pulumi.Output.create<int>(map['maxSendTps'] as int),
      messageType: map['messageType'] == null ? null : pulumi.Output.create<String>(map['messageType'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      topicName: map['topicName'] == null ? null : pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

