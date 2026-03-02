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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      maxSendTps: map['maxSendTps'] == null ? null : (map['maxSendTps']! as int).input(),
      messageType: map['messageType'] == null ? null : (map['messageType']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      remark: map['remark'] == null ? null : (map['remark']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      topicName: map['topicName'] == null ? null : (map['topicName']! as String).input(),
    );
  }
}

