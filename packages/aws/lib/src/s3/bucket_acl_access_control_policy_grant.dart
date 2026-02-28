// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_acl_access_control_policy_grant_grantee.dart';

class BucketAclAccessControlPolicyGrant {
  /// Configuration block for the person being granted permissions. See below.
  final BucketAclAccessControlPolicyGrantGrantee? grantee;
  /// Logging permissions assigned to the grantee for the bucket. Valid values: `FULL_CONTROL`, `WRITE`, `WRITE_ACP`, `READ`, `READ_ACP`. See [What permissions can I grant?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#permissions) for more details about what each permission means in the context of buckets.
  final String permission;

  /// Creates a new [BucketAclAccessControlPolicyGrant].
  /// [grantee] Configuration block for the person being granted permissions. See below.
  /// [permission] Logging permissions assigned to the grantee for the bucket. Valid values: `FULL_CONTROL`, `WRITE`, `WRITE_ACP`, `READ`, `READ_ACP`. See [What permissions can I grant?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#permissions) for more details about what each permission means in the context of buckets.
  BucketAclAccessControlPolicyGrant({
    this.grantee,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantee': ?grantee == null ? null : grantee!.toMap(),
      'permission': permission,
    };
  }

  factory BucketAclAccessControlPolicyGrant.fromMap(Map<String, dynamic> map) {
    return BucketAclAccessControlPolicyGrant(
      grantee: map['grantee'] == null ? null : BucketAclAccessControlPolicyGrantGrantee.fromMap((map['grantee'] as Map).cast<String, dynamic>()),
      permission: map['permission'] as String,
    );
  }
}

