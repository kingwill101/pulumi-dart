// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AccountPublicAccessBlock.
class AccountPublicAccessBlockArgs {
  /// AWS account ID to configure. Defaults to automatically determined account ID of the this provider AWS provider.
  final Input<String>? accountId;

  /// Whether Amazon S3 should block public ACLs for buckets in this account. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Enabling this setting does not affect existing policies or ACLs. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> causes the following behavior:
  /// * PUT Bucket acl and PUT Object acl calls will fail if the specified ACL allows public access.
  /// * PUT Object calls fail if the request includes a public ACL.
  final Input<bool>? blockPublicAcls;

  /// Whether Amazon S3 should block public bucket policies for buckets in this account. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Enabling this setting does not affect existing bucket policies. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> causes Amazon S3 to:
  /// * Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  final Input<bool>? blockPublicPolicy;

  /// Whether Amazon S3 should ignore public ACLs for buckets in this account. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> causes Amazon S3 to:
  /// * Ignore all public ACLs on buckets in this account and any objects that they contain.
  final Input<bool>? ignorePublicAcls;

  /// Whether Amazon S3 should restrict public bucket policies for buckets in this account. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Enabling this setting does not affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>:
  /// * Only the bucket owner and AWS Services can access buckets with public policies.
  final Input<bool>? restrictPublicBuckets;

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
      accountId: Input.asOptionalInput<String>(map['accountId']),
      blockPublicAcls: Input.asOptionalInput<bool>(map['blockPublicAcls']),
      blockPublicPolicy: Input.asOptionalInput<bool>(map['blockPublicPolicy']),
      ignorePublicAcls: Input.asOptionalInput<bool>(map['ignorePublicAcls']),
      restrictPublicBuckets:
          Input.asOptionalInput<bool>(map['restrictPublicBuckets']),
    );
  }
}
