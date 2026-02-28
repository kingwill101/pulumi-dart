// ignore_for_file: unused_element, unnecessary_cast

class AccessPointPublicAccessBlockConfiguration {
  /// Whether Amazon S3 should block public ACLs for buckets in this account. Defaults to `true`. Enabling this setting does not affect existing policies or ACLs. When set to `true` causes the following behavior:
  /// * PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public.
  /// * PUT Object calls fail if the request includes a public ACL.
  /// * PUT Bucket calls fail if the request includes a public ACL.
  final bool? blockPublicAcls;

  /// Whether Amazon S3 should block public bucket policies for buckets in this account. Defaults to `true`. Enabling this setting does not affect existing bucket policies. When set to `true` causes Amazon S3 to:
  /// * Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  final bool? blockPublicPolicy;

  /// Whether Amazon S3 should ignore public ACLs for buckets in this account. Defaults to `true`. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to `true` causes Amazon S3 to:
  /// * Ignore all public ACLs on buckets in this account and any objects that they contain.
  final bool? ignorePublicAcls;

  /// Whether Amazon S3 should restrict public bucket policies for buckets in this account. Defaults to `true`. Enabling this setting does not affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked. When set to `true`:
  /// * Only the bucket owner and AWS Services can access buckets with public policies.
  final bool? restrictPublicBuckets;

  /// Creates a new [AccessPointPublicAccessBlockConfiguration].
  /// [blockPublicAcls] Whether Amazon S3 should block public ACLs for buckets in this account. Defaults to `true`. Enabling this setting does not affect existing policies or ACLs. When set to `true` causes the following behavior:
  /// [blockPublicPolicy] Whether Amazon S3 should block public bucket policies for buckets in this account. Defaults to `true`. Enabling this setting does not affect existing bucket policies. When set to `true` causes Amazon S3 to:
  /// [ignorePublicAcls] Whether Amazon S3 should ignore public ACLs for buckets in this account. Defaults to `true`. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to `true` causes Amazon S3 to:
  /// [restrictPublicBuckets] Whether Amazon S3 should restrict public bucket policies for buckets in this account. Defaults to `true`. Enabling this setting does not affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked. When set to `true`:
  AccessPointPublicAccessBlockConfiguration({
    this.blockPublicAcls,
    this.blockPublicPolicy,
    this.ignorePublicAcls,
    this.restrictPublicBuckets,
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

  factory AccessPointPublicAccessBlockConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AccessPointPublicAccessBlockConfiguration(
      blockPublicAcls: map['blockPublicAcls'] == null
          ? null
          : map['blockPublicAcls'] as bool,
      blockPublicPolicy: map['blockPublicPolicy'] == null
          ? null
          : map['blockPublicPolicy'] as bool,
      ignorePublicAcls: map['ignorePublicAcls'] == null
          ? null
          : map['ignorePublicAcls'] as bool,
      restrictPublicBuckets: map['restrictPublicBuckets'] == null
          ? null
          : map['restrictPublicBuckets'] as bool,
    );
  }
}
