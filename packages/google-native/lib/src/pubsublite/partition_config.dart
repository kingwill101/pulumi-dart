// ignore_for_file: unused_element, unnecessary_cast

import 'capacity.dart';

/// The settings for a topic's partitions.
class PartitionConfig {
  /// The capacity configuration.
  final Capacity? capacity;

  /// The number of partitions in the topic. Must be at least 1. Once a topic has been created the number of partitions can be increased but not decreased. Message ordering is not guaranteed across a topic resize. For more information see https://cloud.google.com/pubsub/lite/docs/topics#scaling_capacity
  final String? count;

  /// DEPRECATED: Use capacity instead which can express a superset of configurations. Every partition in the topic is allocated throughput equivalent to `scale` times the standard partition throughput (4 MiB/s). This is also reflected in the cost of this topic; a topic with `scale` of 2 and count of 10 is charged for 20 partitions. This value must be in the range [1,4].
  final int? scale;

  /// Creates a new [PartitionConfig].
  /// [capacity] The capacity configuration.
  /// [count] The number of partitions in the topic. Must be at least 1. Once a topic has been created the number of partitions can be increased but not decreased. Message ordering is not guaranteed across a topic resize. For more information see https://cloud.google.com/pubsub/lite/docs/topics#scaling_capacity
  /// [scale] DEPRECATED: Use capacity instead which can express a superset of configurations. Every partition in the topic is allocated throughput equivalent to `scale` times the standard partition throughput (4 MiB/s). This is also reflected in the cost of this topic; a topic with `scale` of 2 and count of 10 is charged for 20 partitions. This value must be in the range [1,4].
  PartitionConfig({
    this.capacity,
    this.count,
    this.scale,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityValue = capacity;
    if (capacityValue != null) {
      map['capacity'] = capacityValue.toMap();
    }
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final scaleValue = scale;
    if (scaleValue != null) {
      map['scale'] = scaleValue;
    }
    return map;
  }

  factory PartitionConfig.fromMap(Map<String, dynamic> map) {
    return PartitionConfig(
      capacity: map['capacity'] == null
          ? null
          : Capacity.fromMap((map['capacity'] as Map).cast<String, dynamic>()),
      count: map['count'] == null ? null : map['count'] as String,
      scale: map['scale'] == null ? null : map['scale'] as int,
    );
  }
}
