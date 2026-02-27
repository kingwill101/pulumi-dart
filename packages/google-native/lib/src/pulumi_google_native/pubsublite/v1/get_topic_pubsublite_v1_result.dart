// ignore_for_file: unused_element, unnecessary_cast

import 'partition_config_response.dart';
import 'reservation_config_response.dart';
import 'retention_config_response.dart';

/// Result data returned by getTopic.
class GetTopicPubsubliteV1Result {
  /// The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  final String name;

  /// The settings for this topic's partitions.
  final PartitionConfigResponse partitionConfig;

  /// The settings for this topic's Reservation usage.
  final ReservationConfigResponse reservationConfig;

  /// The settings for this topic's message retention.
  final RetentionConfigResponse retentionConfig;

  GetTopicPubsubliteV1Result({
    required this.name,
    required this.partitionConfig,
    required this.reservationConfig,
    required this.retentionConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['partitionConfig'] = partitionConfig.toMap();
    map['reservationConfig'] = reservationConfig.toMap();
    map['retentionConfig'] = retentionConfig.toMap();
    return map;
  }

  factory GetTopicPubsubliteV1Result.fromMap(Map<String, dynamic> map) {
    return GetTopicPubsubliteV1Result(
      name: map['name'] as String,
      partitionConfig: PartitionConfigResponse.fromMap(
          (map['partitionConfig'] as Map).cast<String, dynamic>()),
      reservationConfig: ReservationConfigResponse.fromMap(
          (map['reservationConfig'] as Map).cast<String, dynamic>()),
      retentionConfig: RetentionConfigResponse.fromMap(
          (map['retentionConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
