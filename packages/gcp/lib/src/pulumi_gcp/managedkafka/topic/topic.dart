import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_args.dart';

/// A Managed Service for Apache Kafka topic. Apache Kafka is a trademark owned by the Apache Software Foundation.
///
///
///
/// ## Example Usage
///
/// ### Managedkafka Topic Basic
///
///
///
///
/// ## Import
///
/// Topic can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/topics/{{topic_id}}`
///
/// * `{{project}}/{{location}}/{{cluster}}/{{topic_id}}`
///
/// * `{{location}}/{{cluster}}/{{topic_id}}`
///
/// When using the `pulumi import` command, Topic can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:managedkafka/topic:Topic default projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/topics/{{topic_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/topic:Topic default {{project}}/{{location}}/{{cluster}}/{{topic_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/topic:Topic default {{location}}/{{cluster}}/{{topic_id}}
/// ```
class Topic extends pulumi.CustomResource {
  /// The cluster name.
  late final pulumi.Output<String> cluster;

  /// Configuration for the topic that are overridden from the cluster defaults. The key of the map is a Kafka topic property name, for example: `cleanup.policy=compact`, `compression.type=producer`.
  late final pulumi.Output<Map<String, String>?> configs;

  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  late final pulumi.Output<String> location;

  /// The name of the topic. The `topic` segment is used when connecting directly to the cluster. Must be in the format `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID/topics/TOPIC_ID`.
  late final pulumi.Output<String> name;

  /// The number of partitions in a topic. You can increase the partition count for a topic, but you cannot decrease it. Increasing partitions for a topic that uses a key might change how messages are distributed.
  late final pulumi.Output<int?> partitionCount;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The number of replicas of each partition. A replication factor of 3 is recommended for high availability.
  late final pulumi.Output<int> replicationFactor;

  /// The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  late final pulumi.Output<String> topicId;

  Topic(
    String name, {
    TopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/topic:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cluster = registerOutput<String>('cluster');
    this.configs = registerOutput<Map<String, String>?>('configs');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.partitionCount = registerOutput<int?>('partitionCount');
    this.project = registerOutput<String>('project');
    this.replicationFactor = registerOutput<int>('replicationFactor');
    this.topicId = registerOutput<String>('topicId');
  }
}
