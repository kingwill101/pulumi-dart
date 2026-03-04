// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountPublicAccessBlock resources.
class AccountPublicAccessBlockState {
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

  /// Creates a new [AccountPublicAccessBlockState].
  /// [accountId] AWS account ID to configure. Defaults to automatically determined account ID of the this provider AWS provider.
  /// [blockPublicAcls] Whether Amazon S3 should block public ACLs for buckets in this account. Defaults to `false`. Enabling this setting does not affect existing policies or ACLs. When set to `true` causes the following behavior:
  /// [blockPublicPolicy] Whether Amazon S3 should block public bucket policies for buckets in this account. Defaults to `false`. Enabling this setting does not affect existing bucket policies. When set to `true` causes Amazon S3 to:
  /// [ignorePublicAcls] Whether Amazon S3 should ignore public ACLs for buckets in this account. Defaults to `false`. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to `true` causes Amazon S3 to:
  /// [restrictPublicBuckets] Whether Amazon S3 should restrict public bucket policies for buckets in this account. Defaults to `false`. Enabling this setting does not affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked. When set to `true`:
  AccountPublicAccessBlockState({
    this.accountId,
    this.blockPublicAcls,
    this.blockPublicPolicy,
    this.ignorePublicAcls,
    this.restrictPublicBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'blockPublicAcls': ?blockPublicAcls,
      'blockPublicPolicy': ?blockPublicPolicy,
      'ignorePublicAcls': ?ignorePublicAcls,
      'restrictPublicBuckets': ?restrictPublicBuckets,
    };
  }

  factory AccountPublicAccessBlockState.fromMap(Map<String, dynamic> map) {
    return AccountPublicAccessBlockState(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      blockPublicAcls: (() {
        final guardedValue = map['blockPublicAcls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      blockPublicPolicy: (() {
        final guardedValue = map['blockPublicPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ignorePublicAcls: (() {
        final guardedValue = map['ignorePublicAcls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      restrictPublicBuckets: (() {
        final guardedValue = map['restrictPublicBuckets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
