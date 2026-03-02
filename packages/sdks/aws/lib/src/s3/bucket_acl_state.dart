// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_acl_access_control_policy.dart';

/// Input properties used for looking up and filtering BucketAcl resources.
class BucketAclState {
  /// Configuration block that sets the ACL permissions for an object per grantee. See below.
  final pulumi.Input<BucketAclAccessControlPolicy>? accessControlPolicy;
  /// Specifies the Canned ACL to apply to the bucket. Valid values: `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, `bucket-owner-full-control`, `log-delivery-write`. Full details are available on the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl).
  final pulumi.Input<String>? acl;
  /// Bucket to which to apply the ACL.
  final pulumi.Input<String>? bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketAclState].
  /// [accessControlPolicy] Configuration block that sets the ACL permissions for an object per grantee. See below.
  /// [acl] Specifies the Canned ACL to apply to the bucket. Valid values: `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, `bucket-owner-full-control`, `log-delivery-write`. Full details are available on the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl).
  /// [bucket] Bucket to which to apply the ACL.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketAclState({
    this.accessControlPolicy,
    this.acl,
    this.bucket,
    this.expectedBucketOwner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlPolicy': ?pulumi.Input.mapOptionalInputValue<BucketAclAccessControlPolicy, Map<String, dynamic>>(accessControlPolicy, (value) => value.toMap()),
      'acl': ?acl,
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
    };
  }

  factory BucketAclState.fromMap(Map<String, dynamic> map) {
    return BucketAclState(
      accessControlPolicy: map['accessControlPolicy'] == null ? null : ((BucketAclAccessControlPolicy.fromMap((map['accessControlPolicy']! as Map).cast<String, dynamic>())).input()).input(),
      acl: map['acl'] == null ? null : ((map['acl'] as String).input()).input(),
      bucket: map['bucket'] == null ? null : ((map['bucket'] as String).input()).input(),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : ((map['expectedBucketOwner'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

