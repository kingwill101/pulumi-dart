// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_logging_target_object_key_format_partitioned_prefix.dart';

class BucketLoggingTargetObjectKeyFormat {
  /// Partitioned S3 key for log objects, in the form `[target_prefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]`. Conflicts with `simple_prefix`. See below.
  final pulumi.Input<BucketLoggingTargetObjectKeyFormatPartitionedPrefix>? partitionedPrefix;
  /// Use the simple format for S3 keys for log objects, in the form `[target_prefix][YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]`. To use, set `simple_prefix {}`. Conflicts with `partitioned_prefix`.
  final pulumi.Input<Map<String, dynamic>>? simplePrefix;

  /// Creates a new [BucketLoggingTargetObjectKeyFormat].
  /// [partitionedPrefix] Partitioned S3 key for log objects, in the form `[target_prefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]`. Conflicts with `simple_prefix`. See below.
  /// [simplePrefix] Use the simple format for S3 keys for log objects, in the form `[target_prefix][YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]`. To use, set `simple_prefix {}`. Conflicts with `partitioned_prefix`.
  BucketLoggingTargetObjectKeyFormat({
    this.partitionedPrefix,
    this.simplePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionedPrefix': ?pulumi.Input.mapOptionalInputValue<BucketLoggingTargetObjectKeyFormatPartitionedPrefix, Map<String, dynamic>>(partitionedPrefix, (value) => value.toMap()),
      'simplePrefix': ?simplePrefix,
    };
  }

  factory BucketLoggingTargetObjectKeyFormat.fromMap(Map<String, dynamic> map) {
    return BucketLoggingTargetObjectKeyFormat(
      partitionedPrefix: map['partitionedPrefix'] == null ? null : (BucketLoggingTargetObjectKeyFormatPartitionedPrefix.fromMap((map['partitionedPrefix'] as Map).cast<String, dynamic>())).input(),
      simplePrefix: map['simplePrefix'] == null ? null : ((map['simplePrefix'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

