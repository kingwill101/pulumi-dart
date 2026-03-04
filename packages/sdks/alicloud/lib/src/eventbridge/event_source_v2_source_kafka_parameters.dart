// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceV2SourceKafkaParameters {
  /// The Group ID of the consumer who subscribes to the Topic.
  final pulumi.Input<String>? consumerGroup;

  /// The instance ID.
  final pulumi.Input<String>? instanceId;

  /// Network configuration: Default (Default network) and public network (self-built network).
  final pulumi.Input<String>? network;

  /// Consumption sites.
  final pulumi.Input<String>? offsetReset;

  /// The region ID.
  final pulumi.Input<String>? regionId;

  /// The ID of the security group.
  final pulumi.Input<String>? securityGroupId;

  /// The topic name.
  final pulumi.Input<String>? topic;

  /// The VPC ID.
  final pulumi.Input<String>? vpcId;

  /// The vSwitch ID.
  final pulumi.Input<String>? vswitchIds;

  /// Creates a new [EventSourceV2SourceKafkaParameters].
  /// [consumerGroup] The Group ID of the consumer who subscribes to the Topic.
  /// [instanceId] The instance ID.
  /// [network] Network configuration: Default (Default network) and public network (self-built network).
  /// [offsetReset] Consumption sites.
  /// [regionId] The region ID.
  /// [securityGroupId] The ID of the security group.
  /// [topic] The topic name.
  /// [vpcId] The VPC ID.
  /// [vswitchIds] The vSwitch ID.
  EventSourceV2SourceKafkaParameters({
    this.consumerGroup,
    this.instanceId,
    this.network,
    this.offsetReset,
    this.regionId,
    this.securityGroupId,
    this.topic,
    this.vpcId,
    this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroup': ?consumerGroup,
      'instanceId': ?instanceId,
      'network': ?network,
      'offsetReset': ?offsetReset,
      'regionId': ?regionId,
      'securityGroupId': ?securityGroupId,
      'topic': ?topic,
      'vpcId': ?vpcId,
      'vswitchIds': ?vswitchIds,
    };
  }

  factory EventSourceV2SourceKafkaParameters.fromMap(Map<String, dynamic> map) {
    return EventSourceV2SourceKafkaParameters(
      consumerGroup: (() {
        final guardedValue = map['consumerGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      offsetReset: (() {
        final guardedValue = map['offsetReset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupId: (() {
        final guardedValue = map['securityGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      topic: (() {
        final guardedValue = map['topic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchIds: (() {
        final guardedValue = map['vswitchIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
