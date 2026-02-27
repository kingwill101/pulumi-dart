import 'package:pulumi/pulumi.dart' hide Config;
import 'partition_config_response.dart';
import 'reservation_config_response.dart';
import 'retention_config_response.dart';
import 'topic_args4.dart';

/// Creates a new topic.
class Topic5 extends CustomResource {
  late final Output<String> location;

  /// The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  late final Output<String> name;

  /// The settings for this topic's partitions.
  late final Output<PartitionConfigResponse> partitionConfig;
  late final Output<String> project;

  /// The settings for this topic's Reservation usage.
  late final Output<ReservationConfigResponse> reservationConfig;

  /// The settings for this topic's message retention.
  late final Output<RetentionConfigResponse> retentionConfig;

  /// Required. The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  late final Output<String> topicId;

  Topic5(
    String name, {
    TopicArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:pubsublite/v1:Topic',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.partitionConfig =
        registerOutput<PartitionConfigResponse>('partitionConfig');
    this.project = registerOutput<String>('project');
    this.reservationConfig =
        registerOutput<ReservationConfigResponse>('reservationConfig');
    this.retentionConfig =
        registerOutput<RetentionConfigResponse>('retentionConfig');
    this.topicId = registerOutput<String>('topicId');
  }
}
