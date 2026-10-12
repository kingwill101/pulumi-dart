// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicator_replication_info_list_consumer_group_replication.dart';
import 'replicator_replication_info_list_topic_replication.dart';

class ReplicatorReplicationInfoList {
  /// Configuration relating to consumer group replication.
  final pulumi.Input<List<ReplicatorReplicationInfoListConsumerGroupReplication>> consumerGroupReplications;
  final pulumi.Input<String?>? sourceKafkaClusterAlias;
  /// The ARN of the source Kafka cluster. Use for an Amazon MSK source. Exactly one of `sourceKafkaClusterArn` or `sourceKafkaClusterId` must be specified.
  final pulumi.Input<String?>? sourceKafkaClusterArn;
  /// The identifier of the source Kafka cluster. Use for a self-managed / on-premises Apache Kafka source (matches `apacheKafkaClusterId`). Exactly one of `sourceKafkaClusterArn` or `sourceKafkaClusterId` must be specified.
  final pulumi.Input<String?>? sourceKafkaClusterId;
  /// The type of compression to use writing records to target Kafka cluster.
  final pulumi.Input<String> targetCompressionType;
  final pulumi.Input<String?>? targetKafkaClusterAlias;
  /// The ARN of the target Kafka cluster. Use for an Amazon MSK target. Exactly one of `targetKafkaClusterArn` or `targetKafkaClusterId` must be specified.
  final pulumi.Input<String?>? targetKafkaClusterArn;
  /// The identifier of the target Kafka cluster. Use for a self-managed / on-premises Apache Kafka target (matches `apacheKafkaClusterId`). Exactly one of `targetKafkaClusterArn` or `targetKafkaClusterId` must be specified.
  final pulumi.Input<String?>? targetKafkaClusterId;
  /// Configuration relating to topic replication.
  final pulumi.Input<List<ReplicatorReplicationInfoListTopicReplication>> topicReplications;

  /// Creates a new [ReplicatorReplicationInfoList].
  /// [consumerGroupReplications] Configuration relating to consumer group replication.
  /// [sourceKafkaClusterAlias] Optional.
  /// [sourceKafkaClusterArn] The ARN of the source Kafka cluster. Use for an Amazon MSK source. Exactly one of `sourceKafkaClusterArn` or `sourceKafkaClusterId` must be specified.
  /// [sourceKafkaClusterId] The identifier of the source Kafka cluster. Use for a self-managed / on-premises Apache Kafka source (matches `apacheKafkaClusterId`). Exactly one of `sourceKafkaClusterArn` or `sourceKafkaClusterId` must be specified.
  /// [targetCompressionType] The type of compression to use writing records to target Kafka cluster.
  /// [targetKafkaClusterAlias] Optional.
  /// [targetKafkaClusterArn] The ARN of the target Kafka cluster. Use for an Amazon MSK target. Exactly one of `targetKafkaClusterArn` or `targetKafkaClusterId` must be specified.
  /// [targetKafkaClusterId] The identifier of the target Kafka cluster. Use for a self-managed / on-premises Apache Kafka target (matches `apacheKafkaClusterId`). Exactly one of `targetKafkaClusterArn` or `targetKafkaClusterId` must be specified.
  /// [topicReplications] Configuration relating to topic replication.
  const ReplicatorReplicationInfoList({
    required this.consumerGroupReplications,
    this.sourceKafkaClusterAlias,
    this.sourceKafkaClusterArn,
    this.sourceKafkaClusterId,
    required this.targetCompressionType,
    this.targetKafkaClusterAlias,
    this.targetKafkaClusterArn,
    this.targetKafkaClusterId,
    required this.topicReplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupReplications': pulumi.Input.mapInputValue<List<ReplicatorReplicationInfoListConsumerGroupReplication>, List<Map<String, dynamic>>>(consumerGroupReplications, (value) => pulumi.Input.encodeList<ReplicatorReplicationInfoListConsumerGroupReplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceKafkaClusterAlias': ?sourceKafkaClusterAlias,
      'sourceKafkaClusterArn': ?sourceKafkaClusterArn,
      'sourceKafkaClusterId': ?sourceKafkaClusterId,
      'targetCompressionType': targetCompressionType,
      'targetKafkaClusterAlias': ?targetKafkaClusterAlias,
      'targetKafkaClusterArn': ?targetKafkaClusterArn,
      'targetKafkaClusterId': ?targetKafkaClusterId,
      'topicReplications': pulumi.Input.mapInputValue<List<ReplicatorReplicationInfoListTopicReplication>, List<Map<String, dynamic>>>(topicReplications, (value) => pulumi.Input.encodeList<ReplicatorReplicationInfoListTopicReplication, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicatorReplicationInfoList.fromMap(Map<String, dynamic> map) {
    return ReplicatorReplicationInfoList(
      consumerGroupReplications: pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicatorReplicationInfoListConsumerGroupReplication>(map['consumerGroupReplications']!, (value) => ReplicatorReplicationInfoListConsumerGroupReplication.fromMap((value as Map).cast<String, dynamic>()))),
      sourceKafkaClusterAlias: (() { final guardedValue = map['sourceKafkaClusterAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceKafkaClusterArn: (() { final guardedValue = map['sourceKafkaClusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceKafkaClusterId: (() { final guardedValue = map['sourceKafkaClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetCompressionType: pulumi.Input.fromValue(map['targetCompressionType'] as String),
      targetKafkaClusterAlias: (() { final guardedValue = map['targetKafkaClusterAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetKafkaClusterArn: (() { final guardedValue = map['targetKafkaClusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetKafkaClusterId: (() { final guardedValue = map['targetKafkaClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicReplications: pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicatorReplicationInfoListTopicReplication>(map['topicReplications']!, (value) => ReplicatorReplicationInfoListTopicReplication.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
