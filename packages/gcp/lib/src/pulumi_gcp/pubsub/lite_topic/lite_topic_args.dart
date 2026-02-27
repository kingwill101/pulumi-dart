// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../lite_topic_partition_config/lite_topic_partition_config.dart';
import '../lite_topic_reservation_config/lite_topic_reservation_config.dart';
import '../lite_topic_retention_config/lite_topic_retention_config.dart';

/// The set of arguments for LiteTopic.
class LiteTopicArgs {
  /// Name of the topic.
  final pulumi.Input<String>? name;

  /// The settings for this topic's partitions.
  /// Structure is documented below.
  final pulumi.Input<LiteTopicPartitionConfig>? partitionConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the pubsub lite topic.
  final pulumi.Input<String>? region;

  /// The settings for this topic's Reservation usage.
  /// Structure is documented below.
  final pulumi.Input<LiteTopicReservationConfig>? reservationConfig;

  /// The settings for a topic's message retention.
  /// Structure is documented below.
  final pulumi.Input<LiteTopicRetentionConfig>? retentionConfig;

  /// The zone of the pubsub lite topic.
  final pulumi.Input<String>? zone;

  LiteTopicArgs({
    this.name,
    this.partitionConfig,
    this.project,
    this.region,
    this.reservationConfig,
    this.retentionConfig,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final partitionConfigValue = partitionConfig;
    if (partitionConfigValue != null) {
      map['partitionConfig'] = pulumi.Input.mapOptionalInputValue<
          LiteTopicPartitionConfig,
          Map<String, dynamic>>(partitionConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final reservationConfigValue = reservationConfig;
    if (reservationConfigValue != null) {
      map['reservationConfig'] = pulumi.Input.mapOptionalInputValue<
              LiteTopicReservationConfig, Map<String, dynamic>>(
          reservationConfigValue, (value) => value.toMap());
    }
    final retentionConfigValue = retentionConfig;
    if (retentionConfigValue != null) {
      map['retentionConfig'] = pulumi.Input.mapOptionalInputValue<
          LiteTopicRetentionConfig,
          Map<String, dynamic>>(retentionConfigValue, (value) => value.toMap());
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory LiteTopicArgs.fromMap(Map<String, dynamic> map) {
    return LiteTopicArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      partitionConfig: pulumi.Input.asOptionalInput<LiteTopicPartitionConfig>(
          map['partitionConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      reservationConfig:
          pulumi.Input.asOptionalInput<LiteTopicReservationConfig>(
              map['reservationConfig']),
      retentionConfig: pulumi.Input.asOptionalInput<LiteTopicRetentionConfig>(
          map['retentionConfig']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
