// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../replicator_replication_info_list_consumer_group_replication/replicator_replication_info_list_consumer_group_replication.dart';
import '../replicator_replication_info_list_topic_replication/replicator_replication_info_list_topic_replication.dart';

class ReplicatorReplicationInfoList {
  /// Configuration relating to consumer group replication.
  final List<ReplicatorReplicationInfoListConsumerGroupReplication>
      consumerGroupReplications;
  final String? sourceKafkaClusterAlias;

  /// The ARN of the source Kafka cluster.
  final String sourceKafkaClusterArn;

  /// The type of compression to use writing records to target Kafka cluster.
  final String targetCompressionType;
  final String? targetKafkaClusterAlias;

  /// The ARN of the target Kafka cluster.
  final String targetKafkaClusterArn;

  /// Configuration relating to topic replication.
  final List<ReplicatorReplicationInfoListTopicReplication> topicReplications;

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
    final map = <String, dynamic>{};
    map['consumerGroupReplications'] = Input.encodeList<
            ReplicatorReplicationInfoListConsumerGroupReplication,
            Map<String, dynamic>>(
        consumerGroupReplications, (value) => value.toMap());
    final sourceKafkaClusterAliasValue = sourceKafkaClusterAlias;
    if (sourceKafkaClusterAliasValue != null) {
      map['sourceKafkaClusterAlias'] = sourceKafkaClusterAliasValue;
    }
    map['sourceKafkaClusterArn'] = sourceKafkaClusterArn;
    map['targetCompressionType'] = targetCompressionType;
    final targetKafkaClusterAliasValue = targetKafkaClusterAlias;
    if (targetKafkaClusterAliasValue != null) {
      map['targetKafkaClusterAlias'] = targetKafkaClusterAliasValue;
    }
    map['targetKafkaClusterArn'] = targetKafkaClusterArn;
    map['topicReplications'] = Input.encodeList<
        ReplicatorReplicationInfoListTopicReplication,
        Map<String, dynamic>>(topicReplications, (value) => value.toMap());
    return map;
  }

  factory ReplicatorReplicationInfoList.fromMap(Map<String, dynamic> map) {
    return ReplicatorReplicationInfoList(
      consumerGroupReplications: Input.decodeList<
              ReplicatorReplicationInfoListConsumerGroupReplication>(
          map['consumerGroupReplications'],
          (value) =>
              ReplicatorReplicationInfoListConsumerGroupReplication.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceKafkaClusterAlias: map['sourceKafkaClusterAlias'] == null
          ? null
          : map['sourceKafkaClusterAlias'] as String,
      sourceKafkaClusterArn: map['sourceKafkaClusterArn'] as String,
      targetCompressionType: map['targetCompressionType'] as String,
      targetKafkaClusterAlias: map['targetKafkaClusterAlias'] == null
          ? null
          : map['targetKafkaClusterAlias'] as String,
      targetKafkaClusterArn: map['targetKafkaClusterArn'] as String,
      topicReplications:
          Input.decodeList<ReplicatorReplicationInfoListTopicReplication>(
              map['topicReplications'],
              (value) => ReplicatorReplicationInfoListTopicReplication.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
