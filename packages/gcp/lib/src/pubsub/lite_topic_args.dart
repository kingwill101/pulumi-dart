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
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      partitionConfig = pulumi.Input.asOptionalInput<LiteTopicPartitionConfig>(partitionConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservationConfig = pulumi.Input.asOptionalInput<LiteTopicReservationConfig>(reservationConfig),
      retentionConfig = pulumi.Input.asOptionalInput<LiteTopicRetentionConfig>(retentionConfig),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'partitionConfig': ?pulumi.Input.mapOptionalInputValue<LiteTopicPartitionConfig, Map<String, dynamic>>(partitionConfig, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'reservationConfig': ?pulumi.Input.mapOptionalInputValue<LiteTopicReservationConfig, Map<String, dynamic>>(reservationConfig, (value) => value.toMap()),
      'retentionConfig': ?pulumi.Input.mapOptionalInputValue<LiteTopicRetentionConfig, Map<String, dynamic>>(retentionConfig, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory LiteTopicArgs.fromMap(Map<String, dynamic> map) {
    return LiteTopicArgs(
      name: map['name'] == null ? null : map['name'] as String,
      partitionConfig: map['partitionConfig'] == null ? null : LiteTopicPartitionConfig.fromMap((map['partitionConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      reservationConfig: map['reservationConfig'] == null ? null : LiteTopicReservationConfig.fromMap((map['reservationConfig'] as Map).cast<String, dynamic>()),
      retentionConfig: map['retentionConfig'] == null ? null : LiteTopicRetentionConfig.fromMap((map['retentionConfig'] as Map).cast<String, dynamic>()),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

