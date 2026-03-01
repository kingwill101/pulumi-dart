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
  final pulumi.Input<TopicsRelatedLink>? configs;
  /// Confluent environment id
  final pulumi.Input<String> environmentId;
  /// Input Config Specification of the topic
  final pulumi.Input<List<TopicsInputConfig>>? inputConfigs;
  /// Type of topic
  final pulumi.Input<String>? kind;
  /// Metadata of the record
  final pulumi.Input<TopicMetadataEntity>? metadata;
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// Partition Specification of the topic
  final pulumi.Input<TopicsRelatedLink>? partitions;
  /// Partition count of the topic
  final pulumi.Input<String>? partitionsCount;
  /// Partition Reassignment Specification of the topic
  final pulumi.Input<TopicsRelatedLink>? partitionsReassignments;
  /// Replication factor of the topic
  final pulumi.Input<String>? replicationFactor;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Topic Id returned by Confluent
  final pulumi.Input<String>? topicId;
  /// Confluent kafka or schema registry topic name
  final pulumi.Input<String>? topicName;

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
  TopicArgs({
    required String clusterId,
    TopicsRelatedLink? configs,
    required String environmentId,
    List<TopicsInputConfig>? inputConfigs,
    String? kind,
    TopicMetadataEntity? metadata,
    required String organizationName,
    TopicsRelatedLink? partitions,
    String? partitionsCount,
    TopicsRelatedLink? partitionsReassignments,
    String? replicationFactor,
    required String resourceGroupName,
    String? topicId,
    String? topicName,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      configs = pulumi.Input.asOptionalInput<TopicsRelatedLink>(configs),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      inputConfigs = pulumi.Input.asOptionalInput<List<TopicsInputConfig>>(inputConfigs),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<TopicMetadataEntity>(metadata),
      organizationName = pulumi.Input.asInput<String>(organizationName),
      partitions = pulumi.Input.asOptionalInput<TopicsRelatedLink>(partitions),
      partitionsCount = pulumi.Input.asOptionalInput<String>(partitionsCount),
      partitionsReassignments = pulumi.Input.asOptionalInput<TopicsRelatedLink>(partitionsReassignments),
      replicationFactor = pulumi.Input.asOptionalInput<String>(replicationFactor),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicId = pulumi.Input.asOptionalInput<String>(topicId),
      topicName = pulumi.Input.asOptionalInput<String>(topicName);

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
      clusterId: map['clusterId'] as String,
      configs: map['configs'] == null ? null : TopicsRelatedLink.fromMap((map['configs'] as Map).cast<String, dynamic>()),
      environmentId: map['environmentId'] as String,
      inputConfigs: map['inputConfigs'] == null ? null : pulumi.Input.decodeList<TopicsInputConfig>(map['inputConfigs'], (value) => TopicsInputConfig.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : TopicMetadataEntity.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      organizationName: map['organizationName'] as String,
      partitions: map['partitions'] == null ? null : TopicsRelatedLink.fromMap((map['partitions'] as Map).cast<String, dynamic>()),
      partitionsCount: map['partitionsCount'] == null ? null : map['partitionsCount'] as String,
      partitionsReassignments: map['partitionsReassignments'] == null ? null : TopicsRelatedLink.fromMap((map['partitionsReassignments'] as Map).cast<String, dynamic>()),
      replicationFactor: map['replicationFactor'] == null ? null : map['replicationFactor'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      topicId: map['topicId'] == null ? null : map['topicId'] as String,
      topicName: map['topicName'] == null ? null : map['topicName'] as String,
    );
  }
}

