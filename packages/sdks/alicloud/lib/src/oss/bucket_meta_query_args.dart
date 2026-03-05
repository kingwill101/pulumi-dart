// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_meta_query_bucket_meta_query_args_doc}
/// The set of arguments for BucketMetaQuery.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_meta_query_bucket_meta_query_args_doc}
class BucketMetaQueryArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;

  /// Creates a new [BucketMetaQueryArgs].
  /// [bucket] The name of the bucket.
  BucketMetaQueryArgs({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
    };
  }

  factory BucketMetaQueryArgs.fromMap(Map<String, dynamic> map) {
    return BucketMetaQueryArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
    );
  }
}

