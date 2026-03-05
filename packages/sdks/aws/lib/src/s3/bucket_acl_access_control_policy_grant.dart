// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_acl_access_control_policy_grant_grantee.dart';

class BucketAclAccessControlPolicyGrant {
  /// Configuration block for the person being granted permissions. See below.
  final pulumi.Input<BucketAclAccessControlPolicyGrantGrantee>? grantee;
  /// Logging permissions assigned to the grantee for the bucket. Valid values: `FULL_CONTROL`, `WRITE`, `WRITE_ACP`, `READ`, `READ_ACP`. See [What permissions can I grant?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#permissions) for more details about what each permission means in the context of buckets.
  final pulumi.Input<String> permission;

  /// Creates a new [BucketAclAccessControlPolicyGrant].
  /// [grantee] Configuration block for the person being granted permissions. See below.
  /// [permission] Logging permissions assigned to the grantee for the bucket. Valid values: `FULL_CONTROL`, `WRITE`, `WRITE_ACP`, `READ`, `READ_ACP`. See [What permissions can I grant?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#permissions) for more details about what each permission means in the context of buckets.
  BucketAclAccessControlPolicyGrant({
    this.grantee,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantee': ?pulumi.Input.mapOptionalInputValue<BucketAclAccessControlPolicyGrantGrantee, Map<String, dynamic>>(grantee, (value) => value.toMap()),
      'permission': permission,
    };
  }

  factory BucketAclAccessControlPolicyGrant.fromMap(Map<String, dynamic> map) {
    return BucketAclAccessControlPolicyGrant(
      grantee: (() { final guardedValue = map['grantee']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketAclAccessControlPolicyGrantGrantee.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      permission: pulumi.Input.fromValue(map['permission'] as String),
    );
  }
}

