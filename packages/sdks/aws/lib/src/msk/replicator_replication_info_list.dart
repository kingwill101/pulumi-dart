// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicator_replication_info_list_consumer_group_replication.dart';
import 'replicator_replication_info_list_topic_replication.dart';

class ReplicatorReplicationInfoList {
  /// Configuration relating to consumer group replication.
  final pulumi.Input<List<ReplicatorReplicationInfoListConsumerGroupReplication>> consumerGroupReplications;
  final pulumi.Input<String>? sourceKafkaClusterAlias;
  /// The ARN of the source Kafka cluster.
  final pulumi.Input<String> sourceKafkaClusterArn;
  /// The type of compression to use writing records to target Kafka cluster.
  final pulumi.Input<String> targetCompressionType;
  final pulumi.Input<String>? targetKafkaClusterAlias;
  /// The ARN of the target Kafka cluster.
  final pulumi.Input<String> targetKafkaClusterArn;
  /// Configuration relating to topic replication.
  final pulumi.Input<List<ReplicatorReplicationInfoListTopicReplication>> topicReplications;

  /// Creates a new [ReplicatorReplicationInfoList].
  /// [consumerGroupReplications] Configuration relating to consumer group replication.
  /// [sourceKafkaClusterAlias] Optional.
  /// [sourceKafkaClusterArn] The ARN of the source Kafka cluster.
  /// [targetCompressionType] The type of compression to use writing records to target Kafka cluster.
  /// [targetKafkaClusterAlias] Optional.
  /// [targetKafkaClusterArn] The ARN of the target Kafka cluster.
  /// [topicReplications] Configuration relating to topic replication.
  ReplicatorReplicationInfoList({
    required this.consumerGroupReplications,
    this.sourceKafkaClusterAlias,
    required this.sourceKafkaClusterArn,
    required this.targetCompressionType,
    this.targetKafkaClusterAlias,
    required this.targetKafkaClusterArn,
    required this.topicReplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupReplications': pulumi.Input.mapInputValue<List<ReplicatorReplicationInfoListConsumerGroupReplication>, List<Map<String, dynamic>>>(consumerGroupReplications, (value) => pulumi.Input.encodeList<ReplicatorReplicationInfoListConsumerGroupReplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceKafkaClusterAlias': ?sourceKafkaClusterAlias,
      'sourceKafkaClusterArn': sourceKafkaClusterArn,
      'targetCompressionType': targetCompressionType,
      'targetKafkaClusterAlias': ?targetKafkaClusterAlias,
      'targetKafkaClusterArn': targetKafkaClusterArn,
      'topicReplications': pulumi.Input.mapInputValue<List<ReplicatorReplicationInfoListTopicReplication>, List<Map<String, dynamic>>>(topicReplications, (value) => pulumi.Input.encodeList<ReplicatorReplicationInfoListTopicReplication, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicatorReplicationInfoList.fromMap(Map<String, dynamic> map) {
    return ReplicatorReplicationInfoList(
      consumerGroupReplications: (pulumi.Input.decodeList<ReplicatorReplicationInfoListConsumerGroupReplication>(map['consumerGroupReplications']!, (value) => ReplicatorReplicationInfoListConsumerGroupReplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceKafkaClusterAlias: map['sourceKafkaClusterAlias'] == null ? null : ((map['sourceKafkaClusterAlias'] as String).input()).input(),
      sourceKafkaClusterArn: (map['sourceKafkaClusterArn'] as String).input(),
      targetCompressionType: (map['targetCompressionType'] as String).input(),
      targetKafkaClusterAlias: map['targetKafkaClusterAlias'] == null ? null : ((map['targetKafkaClusterAlias'] as String).input()).input(),
      targetKafkaClusterArn: (map['targetKafkaClusterArn'] as String).input(),
      topicReplications: (pulumi.Input.decodeList<ReplicatorReplicationInfoListTopicReplication>(map['topicReplications']!, (value) => ReplicatorReplicationInfoListTopicReplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

