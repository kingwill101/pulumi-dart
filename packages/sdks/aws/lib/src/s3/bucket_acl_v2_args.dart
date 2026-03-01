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
    pulumi.Output<BucketAclV2AccessControlPolicy>? accessControlPolicy,
    pulumi.Output<String>? acl,
    required pulumi.Output<String> bucket,
    pulumi.Output<String>? expectedBucketOwner,
    pulumi.Output<String>? region,
  }) :
      accessControlPolicy = pulumi.Input.asOptionalInput<BucketAclV2AccessControlPolicy>(accessControlPolicy),
      acl = pulumi.Input.asOptionalInput<String>(acl),
      bucket = pulumi.Input.asInput<String>(bucket),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlPolicy': ?pulumi.Input.mapOptionalInputValue<BucketAclV2AccessControlPolicy, Map<String, dynamic>>(accessControlPolicy, (value) => value.toMap()),
      'acl': ?acl,
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
    };
  }

  factory BucketAclV2Args.fromMap(Map<String, dynamic> map) {
    return BucketAclV2Args(
      accessControlPolicy: map['accessControlPolicy'] == null ? null : pulumi.Output.create<BucketAclV2AccessControlPolicy>(BucketAclV2AccessControlPolicy.fromMap((map['accessControlPolicy'] as Map).cast<String, dynamic>())),
      acl: map['acl'] == null ? null : pulumi.Output.create<String>(map['acl'] as String),
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : pulumi.Output.create<String>(map['expectedBucketOwner'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

