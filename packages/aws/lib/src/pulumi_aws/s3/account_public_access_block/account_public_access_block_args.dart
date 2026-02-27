// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccountPublicAccessBlock.
class AccountPublicAccessBlockArgs {
  /// AWS account ID to configure. Defaults to automatically determined account ID of the this provider AWS provider.
  final pulumi.Input<String>? accountId;

  /// Whether Amazon S3 should block public ACLs for buckets in this account. Defaults to `false`. Enabling this setting does not affect existing policies or ACLs. When set to `true` causes the following behavior:
  /// * PUT Bucket acl and PUT Object acl calls will fail if the specified ACL allows public access.
  /// * PUT Object calls fail if the request includes a public ACL.
  final pulumi.Input<bool>? blockPublicAcls;

  /// Whether Amazon S3 should block public bucket policies for buckets in this account. Defaults to `false`. Enabling this setting does not affect existing bucket policies. When set to `true` causes Amazon S3 to:
  /// * Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  final pulumi.Input<bool>? blockPublicPolicy;

  /// Whether Amazon S3 should ignore public ACLs for buckets in this account. Defaults to `false`. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to `true` causes Amazon S3 to:
  /// * Ignore all public ACLs on buckets in this account and any objects that they contain.
  final pulumi.Input<bool>? ignorePublicAcls;

  /// Whether Amazon S3 should restrict public bucket policies for buckets in this account. Defaults to `false`. Enabling this setting does not affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked. When set to `true`:
  /// * Only the bucket owner and AWS Services can access buckets with public policies.
  final pulumi.Input<bool>? restrictPublicBuckets;

  AccountPublicAccessBlockArgs({
    this.accountId,
    this.blockPublicAcls,
    this.blockPublicPolicy,
    this.ignorePublicAcls,
    this.restrictPublicBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final blockPublicAclsValue = blockPublicAcls;
    if (blockPublicAclsValue != null) {
      map['blockPublicAcls'] = blockPublicAclsValue;
    }
    final blockPublicPolicyValue = blockPublicPolicy;
    if (blockPublicPolicyValue != null) {
      map['blockPublicPolicy'] = blockPublicPolicyValue;
    }
    final ignorePublicAclsValue = ignorePublicAcls;
    if (ignorePublicAclsValue != null) {
      map['ignorePublicAcls'] = ignorePublicAclsValue;
    }
    final restrictPublicBucketsValue = restrictPublicBuckets;
    if (restrictPublicBucketsValue != null) {
      map['restrictPublicBuckets'] = restrictPublicBucketsValue;
    }
    return map;
  }

  factory AccountPublicAccessBlockArgs.fromMap(Map<String, dynamic> map) {
    return AccountPublicAccessBlockArgs(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      blockPublicAcls:
          pulumi.Input.asOptionalInput<bool>(map['blockPublicAcls']),
      blockPublicPolicy:
          pulumi.Input.asOptionalInput<bool>(map['blockPublicPolicy']),
      ignorePublicAcls:
          pulumi.Input.asOptionalInput<bool>(map['ignorePublicAcls']),
      restrictPublicBuckets:
          pulumi.Input.asOptionalInput<bool>(map['restrictPublicBuckets']),
    );
  }
}
