// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketVersioning resources.
class BucketVersioningState {
  /// The name of the bucket.
  final pulumi.Input<String>? bucket;
  /// A bucket can be in one of the following versioning states: disabled, enabled, or suspended. By default, versioning is disabled for a bucket. Updating the value from Enabled or Suspended to Disabled will result in errors, because OSS does not support returning buckets to an unversioned state. .
  final pulumi.Input<String>? status;

  /// Creates a new [BucketVersioningState].
  /// [bucket] The name of the bucket.
  /// [status] A bucket can be in one of the following versioning states: disabled, enabled, or suspended. By default, versioning is disabled for a bucket. Updating the value from Enabled or Suspended to Disabled will result in errors, because OSS does not support returning buckets to an unversioned state. .
  BucketVersioningState({
    this.bucket,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'status': ?status,
    };
  }

  factory BucketVersioningState.fromMap(Map<String, dynamic> map) {
    return BucketVersioningState(
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

