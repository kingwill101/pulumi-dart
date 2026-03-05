// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketPublicAccessBlock resources.
class BucketPublicAccessBlockState {
  /// Whether AlibabaCloud OSS should block public bucket policies and ACL for this bucket.
  final pulumi.Input<bool>? blockPublicAccess;
  /// The name of the bucket.
  final pulumi.Input<String>? bucket;

  /// Creates a new [BucketPublicAccessBlockState].
  /// [blockPublicAccess] Whether AlibabaCloud OSS should block public bucket policies and ACL for this bucket.
  /// [bucket] The name of the bucket.
  BucketPublicAccessBlockState({
    this.blockPublicAccess,
    this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicAccess': ?blockPublicAccess,
      'bucket': ?bucket,
    };
  }

  factory BucketPublicAccessBlockState.fromMap(Map<String, dynamic> map) {
    return BucketPublicAccessBlockState(
      blockPublicAccess: (() { final guardedValue = map['blockPublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

