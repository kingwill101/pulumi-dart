// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_config.dart';
import 'reservation_config.dart';
import 'retention_config.dart';

/// {@template pulumi_pubsublite_v1_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_pubsublite_v1_topic_args_doc}
class TopicArgs {
  final pulumi.Input<String>? location;

  /// The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  final pulumi.Input<String>? name;

  /// The settings for this topic's partitions.
  final pulumi.Input<PartitionConfig>? partitionConfig;
  final pulumi.Input<String>? project;

  /// The settings for this topic's Reservation usage.
  final pulumi.Input<ReservationConfig>? reservationConfig;

  /// The settings for this topic's message retention.
  final pulumi.Input<RetentionConfig>? retentionConfig;

  /// Required. The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  final pulumi.Input<String> topicId;

  /// Creates a new [TopicArgs].
  /// [location] Optional.
  /// [name] The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  /// [partitionConfig] The settings for this topic's partitions.
  /// [project] Optional.
  /// [reservationConfig] The settings for this topic's Reservation usage.
  /// [retentionConfig] The settings for this topic's message retention.
  /// [topicId] Required. The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  TopicArgs({
    String? location,
    String? name,
    PartitionConfig? partitionConfig,
    String? project,
    ReservationConfig? reservationConfig,
    RetentionConfig? retentionConfig,
    required String topicId,
  })  : location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        partitionConfig =
            pulumi.Input.asOptionalInput<PartitionConfig>(partitionConfig),
        project = pulumi.Input.asOptionalInput<String>(project),
        reservationConfig =
            pulumi.Input.asOptionalInput<ReservationConfig>(reservationConfig),
        retentionConfig =
            pulumi.Input.asOptionalInput<RetentionConfig>(retentionConfig),
        topicId = pulumi.Input.asInput<String>(topicId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final partitionConfigValue = partitionConfig;
    if (partitionConfigValue != null) {
      map['partitionConfig'] = pulumi.Input.mapOptionalInputValue<
          PartitionConfig,
          Map<String, dynamic>>(partitionConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reservationConfigValue = reservationConfig;
    if (reservationConfigValue != null) {
      map['reservationConfig'] = pulumi.Input.mapOptionalInputValue<
              ReservationConfig, Map<String, dynamic>>(
          reservationConfigValue, (value) => value.toMap());
    }
    final retentionConfigValue = retentionConfig;
    if (retentionConfigValue != null) {
      map['retentionConfig'] = pulumi.Input.mapOptionalInputValue<
          RetentionConfig,
          Map<String, dynamic>>(retentionConfigValue, (value) => value.toMap());
    }
    map['topicId'] = topicId;
    return map;
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      partitionConfig: map['partitionConfig'] == null
          ? null
          : PartitionConfig.fromMap(
              (map['partitionConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      reservationConfig: map['reservationConfig'] == null
          ? null
          : ReservationConfig.fromMap(
              (map['reservationConfig'] as Map).cast<String, dynamic>()),
      retentionConfig: map['retentionConfig'] == null
          ? null
          : RetentionConfig.fromMap(
              (map['retentionConfig'] as Map).cast<String, dynamic>()),
      topicId: map['topicId'] as String,
    );
  }
}
