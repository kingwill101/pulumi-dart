// ignore_for_file: unused_element, unnecessary_cast


class EventSourceV2SourceKafkaParameters {
  /// The Group ID of the consumer who subscribes to the Topic.
  final String? consumerGroup;
  /// The instance ID.
  final String? instanceId;
  /// Network configuration: Default (Default network) and public network (self-built network).
  final String? network;
  /// Consumption sites.
  final String? offsetReset;
  /// The region ID.
  final String? regionId;
  /// The ID of the security group.
  final String? securityGroupId;
  /// The topic name.
  final String? topic;
  /// The VPC ID.
  final String? vpcId;
  /// The vSwitch ID.
  final String? vswitchIds;

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
      consumerGroup: map['consumerGroup'] == null ? null : map['consumerGroup'] as String,
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      offsetReset: map['offsetReset'] == null ? null : map['offsetReset'] as String,
      regionId: map['regionId'] == null ? null : map['regionId'] as String,
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchIds: map['vswitchIds'] == null ? null : map['vswitchIds'] as String,
    );
  }
}

