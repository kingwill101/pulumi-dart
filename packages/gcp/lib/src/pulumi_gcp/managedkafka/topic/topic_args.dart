// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Topic.
class TopicArgs {
  /// The cluster name.
  final pulumi.Input<String> cluster;

  /// Configuration for the topic that are overridden from the cluster defaults. The key of the map is a Kafka topic property name, for example: `cleanup.policy=compact`, `compression.type=producer`.
  final pulumi.Input<Map<String, String>>? configs;

  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;

  /// The number of partitions in a topic. You can increase the partition count for a topic, but you cannot decrease it. Increasing partitions for a topic that uses a key might change how messages are distributed.
  final pulumi.Input<int>? partitionCount;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The number of replicas of each partition. A replication factor of 3 is recommended for high availability.
  final pulumi.Input<int> replicationFactor;

  /// The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  final pulumi.Input<String> topicId;

  TopicArgs({
    required this.cluster,
    this.configs,
    required this.location,
    this.partitionCount,
    this.project,
    required this.replicationFactor,
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    final configsValue = configs;
    if (configsValue != null) {
      map['configs'] = configsValue;
    }
    map['location'] = location;
    final partitionCountValue = partitionCount;
    if (partitionCountValue != null) {
      map['partitionCount'] = partitionCountValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['replicationFactor'] = replicationFactor;
    map['topicId'] = topicId;
    return map;
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      cluster: pulumi.Input.asInput<String>(map['cluster']),
      configs:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['configs']),
      location: pulumi.Input.asInput<String>(map['location']),
      partitionCount: pulumi.Input.asOptionalInput<int>(map['partitionCount']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      replicationFactor: pulumi.Input.asInput<int>(map['replicationFactor']),
      topicId: pulumi.Input.asInput<String>(map['topicId']),
    );
  }
}
