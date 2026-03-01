// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_acl_access_control_policy.dart';

/// {@template pulumi_s3_bucket_acl_bucket_acl_args_doc}
/// The set of arguments for BucketAcl.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_acl_bucket_acl_args_doc}
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

  /// Creates a new [BucketAclArgs].
  /// [accessControlPolicy] Configuration block that sets the ACL permissions for an object per grantee. See below.
  /// [acl] Specifies the Canned ACL to apply to the bucket. Valid values: `private`, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, `bucket-owner-full-control`, `log-delivery-write`. Full details are available on the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl).
  /// [bucket] Bucket to which to apply the ACL.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketAclArgs({
    pulumi.Output<BucketAclAccessControlPolicy>? accessControlPolicy,
    pulumi.Output<String>? acl,
    required pulumi.Output<String> bucket,
    pulumi.Output<String>? expectedBucketOwner,
    pulumi.Output<String>? region,
  }) :
      accessControlPolicy = pulumi.Input.asOptionalInput<BucketAclAccessControlPolicy>(accessControlPolicy),
      acl = pulumi.Input.asOptionalInput<String>(acl),
      bucket = pulumi.Input.asInput<String>(bucket),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlPolicy': ?pulumi.Input.mapOptionalInputValue<BucketAclAccessControlPolicy, Map<String, dynamic>>(accessControlPolicy, (value) => value.toMap()),
      'acl': ?acl,
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
    };
  }

  factory BucketAclArgs.fromMap(Map<String, dynamic> map) {
    return BucketAclArgs(
      accessControlPolicy: map['accessControlPolicy'] == null ? null : pulumi.Output.create<BucketAclAccessControlPolicy>(BucketAclAccessControlPolicy.fromMap((map['accessControlPolicy'] as Map).cast<String, dynamic>())),
      acl: map['acl'] == null ? null : pulumi.Output.create<String>(map['acl'] as String),
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : pulumi.Output.create<String>(map['expectedBucketOwner'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

