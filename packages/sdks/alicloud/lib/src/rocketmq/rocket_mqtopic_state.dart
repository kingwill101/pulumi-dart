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
    this.createTime,
    this.instanceId,
    this.maxSendTps,
    this.messageType,
    this.regionId,
    this.remark,
    this.status,
    this.topicName,
  });

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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSendTps: (() { final guardedValue = map['maxSendTps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      messageType: (() { final guardedValue = map['messageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remark: (() { final guardedValue = map['remark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicName: (() { final guardedValue = map['topicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

