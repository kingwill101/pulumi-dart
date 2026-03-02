// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceV2SourceRocketmqParameters {
  /// ACL or not.
  final pulumi.Input<String>? authType;
  /// The Group ID of the RocketMQ version of message queue.
  final pulumi.Input<String>? groupId;
  /// Instance access point.
  final pulumi.Input<String>? instanceEndpoint;
  /// The ID of the RocketMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  final pulumi.Input<String>? instanceId;
  /// Instance network.
  final pulumi.Input<String>? instanceNetwork;
  /// The instance password.
  final pulumi.Input<String>? instancePassword;
  /// The ID of the security group.
  final pulumi.Input<String>? instanceSecurityGroupId;
  /// The instance type. Only CLOUD_4 (4.0 instance on the cloud), CLOUD_5 (5.0 instance on the cloud), and SELF_BUILT (user-created MQ).
  final pulumi.Input<String>? instanceType;
  /// The instance user name.
  final pulumi.Input<String>? instanceUsername;
  /// The ID of the VPC.
  final pulumi.Input<String>? instanceVpcId;
  /// The vSwitch ID.
  final pulumi.Input<String>? instanceVswitchIds;
  /// The consumption point of the message. The value description is as follows:
  /// - `CONSUME_FROM_LAST_OFFSET`: starts consumption from the latest point.
  /// - `CONSUME_FROM_FIRST_OFFSET`: starts consumption from the earliest point.
  /// - `CONSUME_FROM_TIMESTAMP`: starts consumption from the specified time point.
  /// Default value: `CONSUME_FROM_LAST_OFFSET`.
  final pulumi.Input<String>? offset;
  /// The region of the RocketMQ instance.
  final pulumi.Input<String>? regionId;
  /// The filter label of the message.
  final pulumi.Input<String>? tag;
  /// The timestamp. This parameter is valid only when the value of the Offset parameter is CONSUME_FROM_TIMESTAMP.
  final pulumi.Input<double>? timestamp;
  /// The Topic name of the RocketMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  final pulumi.Input<String>? topic;

  /// Creates a new [EventSourceV2SourceRocketmqParameters].
  /// [authType] ACL or not.
  /// [groupId] The Group ID of the RocketMQ version of message queue.
  /// [instanceEndpoint] Instance access point.
  /// [instanceId] The ID of the RocketMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  /// [instanceNetwork] Instance network.
  /// [instancePassword] The instance password.
  /// [instanceSecurityGroupId] The ID of the security group.
  /// [instanceType] The instance type. Only CLOUD_4 (4.0 instance on the cloud), CLOUD_5 (5.0 instance on the cloud), and SELF_BUILT (user-created MQ).
  /// [instanceUsername] The instance user name.
  /// [instanceVpcId] The ID of the VPC.
  /// [instanceVswitchIds] The vSwitch ID.
  /// [offset] The consumption point of the message. The value description is as follows:
  /// [regionId] The region of the RocketMQ instance.
  /// [tag] The filter label of the message.
  /// [timestamp] The timestamp. This parameter is valid only when the value of the Offset parameter is CONSUME_FROM_TIMESTAMP.
  /// [topic] The Topic name of the RocketMQ instance. For more information, see Usage Restrictions (~~ 163289 ~~).
  EventSourceV2SourceRocketmqParameters({
    this.authType,
    this.groupId,
    this.instanceEndpoint,
    this.instanceId,
    this.instanceNetwork,
    this.instancePassword,
    this.instanceSecurityGroupId,
    this.instanceType,
    this.instanceUsername,
    this.instanceVpcId,
    this.instanceVswitchIds,
    this.offset,
    this.regionId,
    this.tag,
    this.timestamp,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?authType,
      'groupId': ?groupId,
      'instanceEndpoint': ?instanceEndpoint,
      'instanceId': ?instanceId,
      'instanceNetwork': ?instanceNetwork,
      'instancePassword': ?instancePassword,
      'instanceSecurityGroupId': ?instanceSecurityGroupId,
      'instanceType': ?instanceType,
      'instanceUsername': ?instanceUsername,
      'instanceVpcId': ?instanceVpcId,
      'instanceVswitchIds': ?instanceVswitchIds,
      'offset': ?offset,
      'regionId': ?regionId,
      'tag': ?tag,
      'timestamp': ?timestamp,
      'topic': ?topic,
    };
  }

  factory EventSourceV2SourceRocketmqParameters.fromMap(Map<String, dynamic> map) {
    return EventSourceV2SourceRocketmqParameters(
      authType: map['authType'] == null ? null : (map['authType']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      instanceEndpoint: map['instanceEndpoint'] == null ? null : (map['instanceEndpoint']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      instanceNetwork: map['instanceNetwork'] == null ? null : (map['instanceNetwork']! as String).input(),
      instancePassword: map['instancePassword'] == null ? null : (map['instancePassword']! as String).input(),
      instanceSecurityGroupId: map['instanceSecurityGroupId'] == null ? null : (map['instanceSecurityGroupId']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      instanceUsername: map['instanceUsername'] == null ? null : (map['instanceUsername']! as String).input(),
      instanceVpcId: map['instanceVpcId'] == null ? null : (map['instanceVpcId']! as String).input(),
      instanceVswitchIds: map['instanceVswitchIds'] == null ? null : (map['instanceVswitchIds']! as String).input(),
      offset: map['offset'] == null ? null : (map['offset']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
      timestamp: map['timestamp'] == null ? null : (map['timestamp']! as double).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
    );
  }
}

