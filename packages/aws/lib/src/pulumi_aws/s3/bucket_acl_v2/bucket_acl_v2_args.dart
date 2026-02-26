// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_acl_v2_access_control_policy/bucket_acl_v2_access_control_policy.dart';

/// The set of arguments for BucketAclV2.
class BucketAclV2Args {
  /// Configuration block that sets the ACL permissions for an object per grantee. See below.
  final Input<BucketAclV2AccessControlPolicy>? accessControlPolicy;

  /// Specifies the Canned ACL to apply to the bucket. Valid values: <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>, `public-read`, `public-read-write`, `aws-exec-read`, `authenticated-read`, `bucket-owner-read`, `bucket-owner-full-control`, `log-delivery-write`. Full details are available on the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl).
  final Input<String>? acl;

  /// Bucket to which to apply the ACL.
  final Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  BucketAclV2Args({
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
      map['accessControlPolicy'] = Input.mapOptionalInputValue<
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
      accessControlPolicy:
          Input.asOptionalInput<BucketAclV2AccessControlPolicy>(
              map['accessControlPolicy']),
      acl: Input.asOptionalInput<String>(map['acl']),
      bucket: Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
