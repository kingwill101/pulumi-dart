// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketPublicAccessBlock resources.
class BucketPublicAccessBlockState {
  /// Whether Amazon S3 should block public ACLs for this bucket. Defaults to `false`. Enabling this setting does not affect existing policies or ACLs. When set to `true` causes the following behavior:
  /// * PUT Bucket ACL and PUT Object ACL calls will fail if the specified ACL allows public access.
  /// * PUT Object calls will fail if the request includes an object ACL.
  final pulumi.Input<bool>? blockPublicAcls;
  /// Whether Amazon S3 should block public bucket policies for this bucket. Defaults to `false`. Enabling this setting does not affect the existing bucket policy. When set to `true` causes Amazon S3 to:
  /// * Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  final pulumi.Input<bool>? blockPublicPolicy;
  /// S3 Bucket to which this Public Access Block configuration should be applied.
  final pulumi.Input<String>? bucket;
  /// Whether Amazon S3 should ignore public ACLs for this bucket. Defaults to `false`. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to `true` causes Amazon S3 to:
  /// * Ignore public ACLs on this bucket and any objects that it contains.
  final pulumi.Input<bool>? ignorePublicAcls;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to `false`. Enabling this setting does not affect the previously stored bucket policy, except that public and cross-account access within the public bucket policy, including non-public delegation to specific accounts, is blocked. When set to `true`:
  /// * Only the bucket owner and AWS Services can access this buckets if it has a public policy.
  final pulumi.Input<bool>? restrictPublicBuckets;
  /// Whether to retain the public access block upon destruction. If set to `true`, the resource is simply removed from state instead. This may be desirable in certain scenarios to prevent the removal of a public access block before deletion of the associated bucket.
  final pulumi.Input<bool>? skipDestroy;

  /// Creates a new [BucketPublicAccessBlockState].
  /// [blockPublicAcls] Whether Amazon S3 should block public ACLs for this bucket. Defaults to `false`. Enabling this setting does not affect existing policies or ACLs. When set to `true` causes the following behavior:
  /// [blockPublicPolicy] Whether Amazon S3 should block public bucket policies for this bucket. Defaults to `false`. Enabling this setting does not affect the existing bucket policy. When set to `true` causes Amazon S3 to:
  /// [bucket] S3 Bucket to which this Public Access Block configuration should be applied.
  /// [ignorePublicAcls] Whether Amazon S3 should ignore public ACLs for this bucket. Defaults to `false`. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to `true` causes Amazon S3 to:
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restrictPublicBuckets] Whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to `false`. Enabling this setting does not affect the previously stored bucket policy, except that public and cross-account access within the public bucket policy, including non-public delegation to specific accounts, is blocked. When set to `true`:
  /// [skipDestroy] Whether to retain the public access block upon destruction. If set to `true`, the resource is simply removed from state instead. This may be desirable in certain scenarios to prevent the removal of a public access block before deletion of the associated bucket.
  BucketPublicAccessBlockState({
    this.blockPublicAcls,
    this.blockPublicPolicy,
    this.bucket,
    this.ignorePublicAcls,
    this.region,
    this.restrictPublicBuckets,
    this.skipDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicAcls': ?blockPublicAcls,
      'blockPublicPolicy': ?blockPublicPolicy,
      'bucket': ?bucket,
      'ignorePublicAcls': ?ignorePublicAcls,
      'region': ?region,
      'restrictPublicBuckets': ?restrictPublicBuckets,
      'skipDestroy': ?skipDestroy,
    };
  }

  factory BucketPublicAccessBlockState.fromMap(Map<String, dynamic> map) {
    return BucketPublicAccessBlockState(
      blockPublicAcls: (() { final guardedValue = map['blockPublicAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      blockPublicPolicy: (() { final guardedValue = map['blockPublicPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignorePublicAcls: (() { final guardedValue = map['ignorePublicAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictPublicBuckets: (() { final guardedValue = map['restrictPublicBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

