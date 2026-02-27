import 'package:pulumi/pulumi.dart' as pulumi;
import '../lite_topic_partition_config/lite_topic_partition_config.dart';
import '../lite_topic_reservation_config/lite_topic_reservation_config.dart';
import '../lite_topic_retention_config/lite_topic_retention_config.dart';
import 'lite_topic_args.dart';

/// > **Warning:** [Pubsub Lite is deprecated and will be turned down effective March 18, 2026](https://cloud.google.com/pubsub/lite/docs/release-notes#June_17_2024). The resource will be removed in a future major release, please use `gcp.pubsub.Topic` instead.
///
/// A named resource to which messages are sent by publishers.
///
///
/// To get more information about Topic, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/lite/docs/reference/rest/v1/admin.projects.locations.topics)
/// * How-to Guides
/// * [Managing Topics](https://cloud.google.com/pubsub/lite/docs/topics)
///
/// ## Example Usage
///
/// ### Pubsub Lite Topic Basic
///
///
///
///
/// ## Import
///
/// Topic can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{zone}}/topics/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Topic can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteTopic:LiteTopic default projects/{{project}}/locations/{{zone}}/topics/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteTopic:LiteTopic default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteTopic:LiteTopic default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteTopic:LiteTopic default {{name}}
/// ```
class LiteTopic extends pulumi.CustomResource {
  /// Name of the topic.
  late final pulumi.Output<String> name;

  /// The settings for this topic's partitions.
  /// Structure is documented below.
  late final pulumi.Output<LiteTopicPartitionConfig?> partitionConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region of the pubsub lite topic.
  late final pulumi.Output<String?> region;

  /// The settings for this topic's Reservation usage.
  /// Structure is documented below.
  late final pulumi.Output<LiteTopicReservationConfig?> reservationConfig;

  /// The settings for a topic's message retention.
  /// Structure is documented below.
  late final pulumi.Output<LiteTopicRetentionConfig?> retentionConfig;

  /// The zone of the pubsub lite topic.
  late final pulumi.Output<String?> zone;

  LiteTopic(
    String name, {
    LiteTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/liteTopic:LiteTopic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.partitionConfig =
        registerOutput<LiteTopicPartitionConfig?>('partitionConfig');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String?>('region');
    this.reservationConfig =
        registerOutput<LiteTopicReservationConfig?>('reservationConfig');
    this.retentionConfig =
        registerOutput<LiteTopicRetentionConfig?>('retentionConfig');
    this.zone = registerOutput<String?>('zone');
  }
}
