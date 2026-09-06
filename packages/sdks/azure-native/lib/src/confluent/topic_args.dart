// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_metadata_entity.dart';
import 'topics_input_config.dart';
import 'topics_related_link.dart';

/// {@template pulumi_confluent_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_confluent_topic_args_doc}
class TopicArgs {
  /// Confluent kafka or schema registry cluster id
  final pulumi.Input<String> clusterId;
  /// Config Specification of the topic
  final pulumi.Input<TopicsRelatedLink?>? configs;
  /// Confluent environment id
  final pulumi.Input<String> environmentId;
  /// Input Config Specification of the topic
  final pulumi.Input<List<TopicsInputConfig>?>? inputConfigs;
  /// Type of topic
  final pulumi.Input<String?>? kind;
  /// Metadata of the record
  final pulumi.Input<TopicMetadataEntity?>? metadata;
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// Partition Specification of the topic
  final pulumi.Input<TopicsRelatedLink?>? partitions;
  /// Partition count of the topic
  final pulumi.Input<String?>? partitionsCount;
  /// Partition Reassignment Specification of the topic
  final pulumi.Input<TopicsRelatedLink?>? partitionsReassignments;
  /// Replication factor of the topic
  final pulumi.Input<String?>? replicationFactor;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Topic Id returned by Confluent
  final pulumi.Input<String?>? topicId;
  /// Confluent kafka or schema registry topic name
  final pulumi.Input<String?>? topicName;

  /// Creates a new [TopicArgs].
  /// [clusterId] Confluent kafka or schema registry cluster id
  /// [configs] Config Specification of the topic
  /// [environmentId] Confluent environment id
  /// [inputConfigs] Input Config Specification of the topic
  /// [kind] Type of topic
  /// [metadata] Metadata of the record
  /// [organizationName] Organization resource name
  /// [partitions] Partition Specification of the topic
  /// [partitionsCount] Partition count of the topic
  /// [partitionsReassignments] Partition Reassignment Specification of the topic
  /// [replicationFactor] Replication factor of the topic
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [topicId] Topic Id returned by Confluent
  /// [topicName] Confluent kafka or schema registry topic name
  const TopicArgs({
    required this.clusterId,
    this.configs,
    required this.environmentId,
    this.inputConfigs,
    this.kind,
    this.metadata,
    required this.organizationName,
    this.partitions,
    this.partitionsCount,
    this.partitionsReassignments,
    this.replicationFactor,
    required this.resourceGroupName,
    this.topicId,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'configs': ?pulumi.Input.mapOptionalInputValue<TopicsRelatedLink, Map<String, dynamic>>(configs, (value) => value.toMap()),
      'environmentId': environmentId,
      'inputConfigs': ?pulumi.Input.mapOptionalInputValue<List<TopicsInputConfig>, List<Map<String, dynamic>>>(inputConfigs, (value) => pulumi.Input.encodeList<TopicsInputConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<TopicMetadataEntity, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'organizationName': organizationName,
      'partitions': ?pulumi.Input.mapOptionalInputValue<TopicsRelatedLink, Map<String, dynamic>>(partitions, (value) => value.toMap()),
      'partitionsCount': ?partitionsCount,
      'partitionsReassignments': ?pulumi.Input.mapOptionalInputValue<TopicsRelatedLink, Map<String, dynamic>>(partitionsReassignments, (value) => value.toMap()),
      'replicationFactor': ?replicationFactor,
      'resourceGroupName': resourceGroupName,
      'topicId': ?topicId,
      'topicName': ?topicName,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicsRelatedLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      inputConfigs: (() { final guardedValue = map['inputConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TopicsInputConfig>(guardedValue, (value) => TopicsInputConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicMetadataEntity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      partitions: (() { final guardedValue = map['partitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicsRelatedLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      partitionsCount: (() { final guardedValue = map['partitionsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionsReassignments: (() { final guardedValue = map['partitionsReassignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicsRelatedLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicationFactor: (() { final guardedValue = map['replicationFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      topicId: (() { final guardedValue = map['topicId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicName: (() { final guardedValue = map['topicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
