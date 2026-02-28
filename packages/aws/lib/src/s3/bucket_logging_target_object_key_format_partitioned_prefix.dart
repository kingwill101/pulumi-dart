// ignore_for_file: unused_element, unnecessary_cast

class BucketLoggingTargetObjectKeyFormatPartitionedPrefix {
  /// Specifies the partition date source for the partitioned prefix. Valid values: `EventTime`, `DeliveryTime`.
  final String partitionDateSource;

  /// Creates a new [BucketLoggingTargetObjectKeyFormatPartitionedPrefix].
  /// [partitionDateSource] Specifies the partition date source for the partitioned prefix. Valid values: `EventTime`, `DeliveryTime`.
  BucketLoggingTargetObjectKeyFormatPartitionedPrefix({
    required this.partitionDateSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['partitionDateSource'] = partitionDateSource;
    return map;
  }

  factory BucketLoggingTargetObjectKeyFormatPartitionedPrefix.fromMap(
      Map<String, dynamic> map) {
    return BucketLoggingTargetObjectKeyFormatPartitionedPrefix(
      partitionDateSource: map['partitionDateSource'] as String,
    );
  }
}
