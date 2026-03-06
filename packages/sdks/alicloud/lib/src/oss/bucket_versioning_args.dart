// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_versioning_bucket_versioning_args_doc}
/// The set of arguments for BucketVersioning.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_versioning_bucket_versioning_args_doc}
class BucketVersioningArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// A bucket can be in one of the following versioning states: disabled, enabled, or suspended. By default, versioning is disabled for a bucket. Updating the value from Enabled or Suspended to Disabled will result in errors, because OSS does not support returning buckets to an unversioned state. .
  final pulumi.Input<String>? status;

  /// Creates a new [BucketVersioningArgs].
  /// [bucket] The name of the bucket.
  /// [status] A bucket can be in one of the following versioning states: disabled, enabled, or suspended. By default, versioning is disabled for a bucket. Updating the value from Enabled or Suspended to Disabled will result in errors, because OSS does not support returning buckets to an unversioned state. .
  const BucketVersioningArgs({
    required this.bucket,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'status': ?status,
    };
  }

  factory BucketVersioningArgs.fromMap(Map<String, dynamic> map) {
    return BucketVersioningArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

