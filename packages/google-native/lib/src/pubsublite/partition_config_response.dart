// ignore_for_file: unused_element, unnecessary_cast

import 'capacity_response.dart';

/// The settings for a topic's partitions.
class PartitionConfigResponse {
  /// The capacity configuration.
  final CapacityResponse capacity;

  /// The number of partitions in the topic. Must be at least 1. Once a topic has been created the number of partitions can be increased but not decreased. Message ordering is not guaranteed across a topic resize. For more information see https://cloud.google.com/pubsub/lite/docs/topics#scaling_capacity
  final String count;

  /// DEPRECATED: Use capacity instead which can express a superset of configurations. Every partition in the topic is allocated throughput equivalent to `scale` times the standard partition throughput (4 MiB/s). This is also reflected in the cost of this topic; a topic with `scale` of 2 and count of 10 is charged for 20 partitions. This value must be in the range [1,4].
  final int scale;

  /// Creates a new [PartitionConfigResponse].
  /// [capacity] The capacity configuration.
  /// [count] The number of partitions in the topic. Must be at least 1. Once a topic has been created the number of partitions can be increased but not decreased. Message ordering is not guaranteed across a topic resize. For more information see https://cloud.google.com/pubsub/lite/docs/topics#scaling_capacity
  /// [scale] DEPRECATED: Use capacity instead which can express a superset of configurations. Every partition in the topic is allocated throughput equivalent to `scale` times the standard partition throughput (4 MiB/s). This is also reflected in the cost of this topic; a topic with `scale` of 2 and count of 10 is charged for 20 partitions. This value must be in the range [1,4].
  PartitionConfigResponse({
    required this.capacity,
    required this.count,
    required this.scale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity.toMap(),
      'count': count,
      'scale': scale,
    };
  }

  factory PartitionConfigResponse.fromMap(Map<String, dynamic> map) {
    return PartitionConfigResponse(
      capacity: CapacityResponse.fromMap(
        (map['capacity'] as Map).cast<String, dynamic>(),
      ),
      count: map['count'] as String,
      scale: map['scale'] as int,
    );
  }
}
