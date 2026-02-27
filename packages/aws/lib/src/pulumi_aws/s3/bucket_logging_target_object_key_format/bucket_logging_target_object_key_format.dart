// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_logging_target_object_key_format_partitioned_prefix/bucket_logging_target_object_key_format_partitioned_prefix.dart';

class BucketLoggingTargetObjectKeyFormat {
  /// Partitioned S3 key for log objects, in the form `[target_prefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]`. Conflicts with `simple_prefix`. See below.
  final BucketLoggingTargetObjectKeyFormatPartitionedPrefix? partitionedPrefix;

  /// Use the simple format for S3 keys for log objects, in the form `[target_prefix][YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]`. To use, set `simple_prefix {}`. Conflicts with `partitioned_prefix`.
  final Map<String, dynamic>? simplePrefix;

  BucketLoggingTargetObjectKeyFormat({
    this.partitionedPrefix,
    this.simplePrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final partitionedPrefixValue = partitionedPrefix;
    if (partitionedPrefixValue != null) {
      map['partitionedPrefix'] = partitionedPrefixValue.toMap();
    }
    final simplePrefixValue = simplePrefix;
    if (simplePrefixValue != null) {
      map['simplePrefix'] = simplePrefixValue;
    }
    return map;
  }

  factory BucketLoggingTargetObjectKeyFormat.fromMap(Map<String, dynamic> map) {
    return BucketLoggingTargetObjectKeyFormat(
      partitionedPrefix: map['partitionedPrefix'] == null
          ? null
          : BucketLoggingTargetObjectKeyFormatPartitionedPrefix.fromMap(
              (map['partitionedPrefix'] as Map).cast<String, dynamic>()),
      simplePrefix: map['simplePrefix'] == null
          ? null
          : (map['simplePrefix'] as Map).cast<String, dynamic>(),
    );
  }
}
