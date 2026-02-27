// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_acl_access_control_policy/bucket_acl_access_control_policy.dart';

/// The set of arguments for BucketAcl.
class BucketAclArgs {
  /// Configuration block that sets the ACL permissions for an object per grantee. See below.
  final pulumi.Input<BucketAclAccessControlPolicy>? accessControlPolicy;

  /// Specifies the Canned ACL to apply to the bucket. Valid values: `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, `bucket-owner-full-control`, `log-delivery-write`. Full details are available on the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl).
  final pulumi.Input<String>? acl;

  /// Bucket to which to apply the ACL.
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  BucketAclArgs({
    this.accessControlPolicy,
    this.acl,
    required this.bucket,
    this.expectedBucketOwner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessControlPolicyValue = accessControlPolicy;
    if (accessControlPolicyValue != null) {
      map['accessControlPolicy'] = pulumi.Input.mapOptionalInputValue<
              BucketAclAccessControlPolicy, Map<String, dynamic>>(
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

  factory BucketAclArgs.fromMap(Map<String, dynamic> map) {
    return BucketAclArgs(
      accessControlPolicy:
          pulumi.Input.asOptionalInput<BucketAclAccessControlPolicy>(
              map['accessControlPolicy']),
      acl: pulumi.Input.asOptionalInput<String>(map['acl']),
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          pulumi.Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
