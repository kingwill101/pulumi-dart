// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_logging_target_object_key_format_partitioned_prefix/bucket_logging_target_object_key_format_partitioned_prefix.dart';

class BucketLoggingTargetObjectKeyFormat {
  /// Partitioned S3 key for log objects, in the form `<span pulumi-lang-nodejs="[targetPrefix]" pulumi-lang-dotnet="[TargetPrefix]" pulumi-lang-go="[targetPrefix]" pulumi-lang-python="[target_prefix]" pulumi-lang-yaml="[targetPrefix]" pulumi-lang-java="[targetPrefix]">[target_prefix]</span>[SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]`. Conflicts with <span pulumi-lang-nodejs="`simplePrefix`" pulumi-lang-dotnet="`SimplePrefix`" pulumi-lang-go="`simplePrefix`" pulumi-lang-python="`simple_prefix`" pulumi-lang-yaml="`simplePrefix`" pulumi-lang-java="`simplePrefix`">`simple_prefix`</span>. See below.
  final BucketLoggingTargetObjectKeyFormatPartitionedPrefix? partitionedPrefix;

  /// Use the simple format for S3 keys for log objects, in the form `<span pulumi-lang-nodejs="[targetPrefix]" pulumi-lang-dotnet="[TargetPrefix]" pulumi-lang-go="[targetPrefix]" pulumi-lang-python="[target_prefix]" pulumi-lang-yaml="[targetPrefix]" pulumi-lang-java="[targetPrefix]">[target_prefix]</span>[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]`. To use, set <span pulumi-lang-nodejs="`simplePrefix " pulumi-lang-dotnet="`SimplePrefix " pulumi-lang-go="`simplePrefix " pulumi-lang-python="`simple_prefix " pulumi-lang-yaml="`simplePrefix " pulumi-lang-java="`simplePrefix ">`simple_prefix </span>{}`. Conflicts with <span pulumi-lang-nodejs="`partitionedPrefix`" pulumi-lang-dotnet="`PartitionedPrefix`" pulumi-lang-go="`partitionedPrefix`" pulumi-lang-python="`partitioned_prefix`" pulumi-lang-yaml="`partitionedPrefix`" pulumi-lang-java="`partitionedPrefix`">`partitioned_prefix`</span>.
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
