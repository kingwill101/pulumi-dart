// ignore_for_file: unused_element, unnecessary_cast

class BucketLoggingV2TargetObjectKeyFormatPartitionedPrefix {
  /// Specifies the partition date source for the partitioned prefix. Valid values: `EventTime`, `DeliveryTime`.
  final String partitionDateSource;

  BucketLoggingV2TargetObjectKeyFormatPartitionedPrefix({
    required this.partitionDateSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['partitionDateSource'] = partitionDateSource;
    return map;
  }

  factory BucketLoggingV2TargetObjectKeyFormatPartitionedPrefix.fromMap(
      Map<String, dynamic> map) {
    return BucketLoggingV2TargetObjectKeyFormatPartitionedPrefix(
      partitionDateSource: map['partitionDateSource'] as String,
    );
  }
}
