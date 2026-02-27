// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'partition_config.dart';
import 'reservation_config.dart';
import 'retention_config.dart';

/// The set of arguments for Topic.
class TopicArgs4 {
  final Input<String>? location;

  /// The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  final Input<String>? name;

  /// The settings for this topic's partitions.
  final Input<PartitionConfig>? partitionConfig;
  final Input<String>? project;

  /// The settings for this topic's Reservation usage.
  final Input<ReservationConfig>? reservationConfig;

  /// The settings for this topic's message retention.
  final Input<RetentionConfig>? retentionConfig;

  /// Required. The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  final Input<String> topicId;

  TopicArgs4({
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
      map['partitionConfig'] =
          Input.mapOptionalInputValue<PartitionConfig, Map<String, dynamic>>(
              partitionConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reservationConfigValue = reservationConfig;
    if (reservationConfigValue != null) {
      map['reservationConfig'] =
          Input.mapOptionalInputValue<ReservationConfig, Map<String, dynamic>>(
              reservationConfigValue, (value) => value.toMap());
    }
    final retentionConfigValue = retentionConfig;
    if (retentionConfigValue != null) {
      map['retentionConfig'] =
          Input.mapOptionalInputValue<RetentionConfig, Map<String, dynamic>>(
              retentionConfigValue, (value) => value.toMap());
    }
    map['topicId'] = topicId;
    return map;
  }

  factory TopicArgs4.fromMap(Map<String, dynamic> map) {
    return TopicArgs4(
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      partitionConfig:
          Input.asOptionalInput<PartitionConfig>(map['partitionConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      reservationConfig:
          Input.asOptionalInput<ReservationConfig>(map['reservationConfig']),
      retentionConfig:
          Input.asOptionalInput<RetentionConfig>(map['retentionConfig']),
      topicId: Input.asInput<String>(map['topicId']),
    );
  }
}
