// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_acl_v2_access_control_policy_grant_grantee.dart';

class BucketAclV2AccessControlPolicyGrant {
  /// Configuration block for the person being granted permissions. See below.
  final pulumi.Input<BucketAclV2AccessControlPolicyGrantGrantee>? grantee;
  /// Logging permissions assigned to the grantee for the bucket. Valid values: `FULL_CONTROL`, `WRITE`, `WRITE_ACP`, `READ`, `READ_ACP`. See [What permissions can I grant?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#permissions) for more details about what each permission means in the context of buckets.
  final pulumi.Input<String> permission;

  /// Creates a new [BucketAclV2AccessControlPolicyGrant].
  /// [grantee] Configuration block for the person being granted permissions. See below.
  /// [permission] Logging permissions assigned to the grantee for the bucket. Valid values: `FULL_CONTROL`, `WRITE`, `WRITE_ACP`, `READ`, `READ_ACP`. See [What permissions can I grant?](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#permissions) for more details about what each permission means in the context of buckets.
  BucketAclV2AccessControlPolicyGrant({
    this.grantee,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantee': ?pulumi.Input.mapOptionalInputValue<BucketAclV2AccessControlPolicyGrantGrantee, Map<String, dynamic>>(grantee, (value) => value.toMap()),
      'permission': permission,
    };
  }

  factory BucketAclV2AccessControlPolicyGrant.fromMap(Map<String, dynamic> map) {
    return BucketAclV2AccessControlPolicyGrant(
      grantee: map['grantee'] == null ? null : (BucketAclV2AccessControlPolicyGrantGrantee.fromMap((map['grantee'] as Map).cast<String, dynamic>())).input(),
      permission: (map['permission'] as String).input(),
    );
  }
}

