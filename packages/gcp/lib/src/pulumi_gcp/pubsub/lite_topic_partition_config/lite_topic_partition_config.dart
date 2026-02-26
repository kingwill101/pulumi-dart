// ignore_for_file: unused_element, unnecessary_cast

import '../lite_topic_partition_config_capacity/lite_topic_partition_config_capacity.dart';

class LiteTopicPartitionConfig {
  /// The capacity configuration.
  /// Structure is documented below.
  final LiteTopicPartitionConfigCapacity? capacity;

  /// The number of partitions in the topic. Must be at least 1.
  final int count;

  LiteTopicPartitionConfig({
    this.capacity,
    required this.count,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityValue = capacity;
    if (capacityValue != null) {
      map['capacity'] = capacityValue.toMap();
    }
    map['count'] = count;
    return map;
  }

  factory LiteTopicPartitionConfig.fromMap(Map<String, dynamic> map) {
    return LiteTopicPartitionConfig(
      capacity: map['capacity'] == null
          ? null
          : LiteTopicPartitionConfigCapacity.fromMap(
              (map['capacity'] as Map).cast<String, dynamic>()),
      count: map['count'] as int,
    );
  }
}
