// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BucketPublicAccessBlock.
class BucketPublicAccessBlockArgs {
  /// Whether Amazon S3 should block public ACLs for this bucket. Defaults to `false`. Enabling this setting does not affect existing policies or ACLs. When set to `true` causes the following behavior:
  /// * PUT Bucket ACL and PUT Object ACL calls will fail if the specified ACL allows public access.
  /// * PUT Object calls will fail if the request includes an object ACL.
  final Input<bool>? blockPublicAcls;

  /// Whether Amazon S3 should block public bucket policies for this bucket. Defaults to `false`. Enabling this setting does not affect the existing bucket policy. When set to `true` causes Amazon S3 to:
  /// * Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  final Input<bool>? blockPublicPolicy;

  /// S3 Bucket to which this Public Access Block configuration should be applied.
  final Input<String> bucket;

  /// Whether Amazon S3 should ignore public ACLs for this bucket. Defaults to `false`. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to `true` causes Amazon S3 to:
  /// * Ignore public ACLs on this bucket and any objects that it contains.
  final Input<bool>? ignorePublicAcls;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to `false`. Enabling this setting does not affect the previously stored bucket policy, except that public and cross-account access within the public bucket policy, including non-public delegation to specific accounts, is blocked. When set to `true`:
  /// * Only the bucket owner and AWS Services can access this buckets if it has a public policy.
  final Input<bool>? restrictPublicBuckets;

  /// Whether to retain the public access block upon destruction. If set to `true`, the resource is simply removed from state instead. This may be desirable in certain scenarios to prevent the removal of a public access block before deletion of the associated bucket.
  final Input<bool>? skipDestroy;

  BucketPublicAccessBlockArgs({
    this.blockPublicAcls,
    this.blockPublicPolicy,
    required this.bucket,
    this.ignorePublicAcls,
    this.region,
    this.restrictPublicBuckets,
    this.skipDestroy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blockPublicAclsValue = blockPublicAcls;
    if (blockPublicAclsValue != null) {
      map['blockPublicAcls'] = blockPublicAclsValue;
    }
    final blockPublicPolicyValue = blockPublicPolicy;
    if (blockPublicPolicyValue != null) {
      map['blockPublicPolicy'] = blockPublicPolicyValue;
    }
    map['bucket'] = bucket;
    final ignorePublicAclsValue = ignorePublicAcls;
    if (ignorePublicAclsValue != null) {
      map['ignorePublicAcls'] = ignorePublicAclsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final restrictPublicBucketsValue = restrictPublicBuckets;
    if (restrictPublicBucketsValue != null) {
      map['restrictPublicBuckets'] = restrictPublicBucketsValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    return map;
  }

  factory BucketPublicAccessBlockArgs.fromMap(Map<String, dynamic> map) {
    return BucketPublicAccessBlockArgs(
      blockPublicAcls: Input.asOptionalInput<bool>(map['blockPublicAcls']),
      blockPublicPolicy: Input.asOptionalInput<bool>(map['blockPublicPolicy']),
      bucket: Input.asInput<String>(map['bucket']),
      ignorePublicAcls: Input.asOptionalInput<bool>(map['ignorePublicAcls']),
      region: Input.asOptionalInput<String>(map['region']),
      restrictPublicBuckets:
          Input.asOptionalInput<bool>(map['restrictPublicBuckets']),
      skipDestroy: Input.asOptionalInput<bool>(map['skipDestroy']),
    );
  }
}
