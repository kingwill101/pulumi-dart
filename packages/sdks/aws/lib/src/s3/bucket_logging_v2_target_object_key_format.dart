// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_logging_v2_target_object_key_format_partitioned_prefix.dart';

class BucketLoggingV2TargetObjectKeyFormat {
  /// Partitioned S3 key for log objects, in the form `[targetPrefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]`. Conflicts with `simplePrefix`. See below.
  final pulumi.Input<BucketLoggingV2TargetObjectKeyFormatPartitionedPrefix>? partitionedPrefix;
  /// Use the simple format for S3 keys for log objects, in the form `[targetPrefix][YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]`. To use, set `simplePrefix {}`. Conflicts with `partitionedPrefix`.
  final pulumi.Input<Map<String, dynamic>>? simplePrefix;

  /// Creates a new [BucketLoggingV2TargetObjectKeyFormat].
  /// [partitionedPrefix] Partitioned S3 key for log objects, in the form `[targetPrefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]`. Conflicts with `simplePrefix`. See below.
  /// [simplePrefix] Use the simple format for S3 keys for log objects, in the form `[targetPrefix][YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]`. To use, set `simplePrefix {}`. Conflicts with `partitionedPrefix`.
  const BucketLoggingV2TargetObjectKeyFormat({
    this.partitionedPrefix,
    this.simplePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionedPrefix': ?pulumi.Input.mapOptionalInputValue<BucketLoggingV2TargetObjectKeyFormatPartitionedPrefix, Map<String, dynamic>>(partitionedPrefix, (value) => value.toMap()),
      'simplePrefix': ?simplePrefix,
    };
  }

  factory BucketLoggingV2TargetObjectKeyFormat.fromMap(Map<String, dynamic> map) {
    return BucketLoggingV2TargetObjectKeyFormat(
      partitionedPrefix: (() { final guardedValue = map['partitionedPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLoggingV2TargetObjectKeyFormatPartitionedPrefix.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      simplePrefix: (() { final guardedValue = map['simplePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
