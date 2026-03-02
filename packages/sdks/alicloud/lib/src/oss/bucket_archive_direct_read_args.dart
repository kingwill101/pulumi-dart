// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_archive_direct_read_bucket_archive_direct_read_args_doc}
/// The set of arguments for BucketArchiveDirectRead.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_archive_direct_read_bucket_archive_direct_read_args_doc}
class BucketArchiveDirectReadArgs {
  /// The name of the bucket
  final pulumi.Input<String> bucket;
  /// Specifies whether to enable real-time access of Archive objects for a bucket. Valid values: true and false.
  final pulumi.Input<bool> enabled;

  /// Creates a new [BucketArchiveDirectReadArgs].
  /// [bucket] The name of the bucket
  /// [enabled] Specifies whether to enable real-time access of Archive objects for a bucket. Valid values: true and false.
  BucketArchiveDirectReadArgs({
    required this.bucket,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'enabled': enabled,
    };
  }

  factory BucketArchiveDirectReadArgs.fromMap(Map<String, dynamic> map) {
    return BucketArchiveDirectReadArgs(
      bucket: (map['bucket'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

