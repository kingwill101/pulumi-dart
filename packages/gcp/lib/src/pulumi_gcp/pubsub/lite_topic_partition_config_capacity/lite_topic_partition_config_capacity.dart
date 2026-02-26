// ignore_for_file: unused_element, unnecessary_cast

class LiteTopicPartitionConfigCapacity {
  /// Subscribe throughput capacity per partition in MiB/s. Must be >= 4 and <= 16.
  final int publishMibPerSec;

  /// Publish throughput capacity per partition in MiB/s. Must be >= 4 and <= 16.
  final int subscribeMibPerSec;

  LiteTopicPartitionConfigCapacity({
    required this.publishMibPerSec,
    required this.subscribeMibPerSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['publishMibPerSec'] = publishMibPerSec;
    map['subscribeMibPerSec'] = subscribeMibPerSec;
    return map;
  }

  factory LiteTopicPartitionConfigCapacity.fromMap(Map<String, dynamic> map) {
    return LiteTopicPartitionConfigCapacity(
      publishMibPerSec: map['publishMibPerSec'] as int,
      subscribeMibPerSec: map['subscribeMibPerSec'] as int,
    );
  }
}
