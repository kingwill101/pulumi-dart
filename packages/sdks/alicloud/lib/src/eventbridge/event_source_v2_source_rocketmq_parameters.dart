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
  const EventSourceV2SourceRocketmqParameters({
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
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceEndpoint: (() { final guardedValue = map['instanceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceNetwork: (() { final guardedValue = map['instanceNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instancePassword: (() { final guardedValue = map['instancePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceSecurityGroupId: (() { final guardedValue = map['instanceSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceUsername: (() { final guardedValue = map['instanceUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceVpcId: (() { final guardedValue = map['instanceVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceVswitchIds: (() { final guardedValue = map['instanceVswitchIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestamp: (() { final guardedValue = map['timestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

