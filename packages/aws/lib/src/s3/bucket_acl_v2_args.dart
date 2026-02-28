// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_acl_v2_access_control_policy.dart';

/// {@template pulumi_s3_bucket_acl_v2_bucket_acl_v2_args_doc}
/// The set of arguments for BucketAclV2.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_acl_v2_bucket_acl_v2_args_doc}
class BucketAclV2Args {
  /// Configuration block that sets the ACL permissions for an object per grantee. See below.
  final pulumi.Input<BucketAclV2AccessControlPolicy>? accessControlPolicy;

  /// Specifies the Canned ACL to apply to the bucket. Valid values: `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, `bucket-owner-full-control`, `log-delivery-write`. Full details are available on the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl).
  final pulumi.Input<String>? acl;

  /// Bucket to which to apply the ACL.
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketAclV2Args].
  /// [accessControlPolicy] Configuration block that sets the ACL permissions for an object per grantee. See below.
  /// [acl] Specifies the Canned ACL to apply to the bucket. Valid values: `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, `bucket-owner-full-control`, `log-delivery-write`. Full details are available on the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl).
  /// [bucket] Bucket to which to apply the ACL.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketAclV2Args({
    BucketAclV2AccessControlPolicy? accessControlPolicy,
    String? acl,
    required String bucket,
    String? expectedBucketOwner,
    String? region,
  })  : accessControlPolicy =
            pulumi.Input.asOptionalInput<BucketAclV2AccessControlPolicy>(
                accessControlPolicy),
        acl = pulumi.Input.asOptionalInput<String>(acl),
        bucket = pulumi.Input.asInput<String>(bucket),
        expectedBucketOwner =
            pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessControlPolicyValue = accessControlPolicy;
    if (accessControlPolicyValue != null) {
      map['accessControlPolicy'] = pulumi.Input.mapOptionalInputValue<
              BucketAclV2AccessControlPolicy, Map<String, dynamic>>(
          accessControlPolicyValue, (value) => value.toMap());
    }
    final aclValue = acl;
    if (aclValue != null) {
      map['acl'] = aclValue;
    }
    map['bucket'] = bucket;
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory BucketAclV2Args.fromMap(Map<String, dynamic> map) {
    return BucketAclV2Args(
      accessControlPolicy: map['accessControlPolicy'] == null
          ? null
          : BucketAclV2AccessControlPolicy.fromMap(
              (map['accessControlPolicy'] as Map).cast<String, dynamic>()),
      acl: map['acl'] == null ? null : map['acl'] as String,
      bucket: map['bucket'] as String,
      expectedBucketOwner: map['expectedBucketOwner'] == null
          ? null
          : map['expectedBucketOwner'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
