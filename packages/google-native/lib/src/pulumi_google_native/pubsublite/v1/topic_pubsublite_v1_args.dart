// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_config.dart';
import 'reservation_config.dart';
import 'retention_config.dart';

/// The set of arguments for Topic.
class TopicPubsubliteV1Args {
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

  TopicPubsubliteV1Args({
    this.location,
    this.name,
    this.partitionConfig,
    this.project,
    this.reservationConfig,
    this.retentionConfig,
    required this.topicId,
  });

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

  factory TopicPubsubliteV1Args.fromMap(Map<String, dynamic> map) {
    return TopicPubsubliteV1Args(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      partitionConfig:
          pulumi.Input.asOptionalInput<PartitionConfig>(map['partitionConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservationConfig: pulumi.Input.asOptionalInput<ReservationConfig>(
          map['reservationConfig']),
      retentionConfig:
          pulumi.Input.asOptionalInput<RetentionConfig>(map['retentionConfig']),
      topicId: pulumi.Input.asInput<String>(map['topicId']),
    );
  }
}
