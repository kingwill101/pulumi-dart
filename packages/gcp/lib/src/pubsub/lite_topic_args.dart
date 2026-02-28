// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lite_topic_partition_config.dart';
import 'lite_topic_reservation_config.dart';
import 'lite_topic_retention_config.dart';

/// {@template pulumi_pubsub_lite_topic_lite_topic_args_doc}
/// The set of arguments for LiteTopic.
/// {@endtemplate}
/// {@macro pulumi_pubsub_lite_topic_lite_topic_args_doc}
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

  /// Creates a new [LiteTopicArgs].
  /// [name] Name of the topic.
  /// [partitionConfig] The settings for this topic's partitions.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the pubsub lite topic.
  /// [reservationConfig] The settings for this topic's Reservation usage.
  /// [retentionConfig] The settings for a topic's message retention.
  /// [zone] The zone of the pubsub lite topic.
  LiteTopicArgs({
    String? name,
    LiteTopicPartitionConfig? partitionConfig,
    String? project,
    String? region,
    LiteTopicReservationConfig? reservationConfig,
    LiteTopicRetentionConfig? retentionConfig,
    String? zone,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        partitionConfig =
            pulumi.Input.asOptionalInput<LiteTopicPartitionConfig>(
                partitionConfig),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region),
        reservationConfig =
            pulumi.Input.asOptionalInput<LiteTopicReservationConfig>(
                reservationConfig),
        retentionConfig =
            pulumi.Input.asOptionalInput<LiteTopicRetentionConfig>(
                retentionConfig),
        zone = pulumi.Input.asOptionalInput<String>(zone);

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
      name: map['name'] == null ? null : map['name'] as String,
      partitionConfig: map['partitionConfig'] == null
          ? null
          : LiteTopicPartitionConfig.fromMap(
              (map['partitionConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      reservationConfig: map['reservationConfig'] == null
          ? null
          : LiteTopicReservationConfig.fromMap(
              (map['reservationConfig'] as Map).cast<String, dynamic>()),
      retentionConfig: map['retentionConfig'] == null
          ? null
          : LiteTopicRetentionConfig.fromMap(
              (map['retentionConfig'] as Map).cast<String, dynamic>()),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
