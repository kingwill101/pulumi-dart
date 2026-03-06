// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_acl_v2_access_control_policy_grant.dart';
import 'bucket_acl_v2_access_control_policy_owner.dart';

class BucketAclV2AccessControlPolicy {
  /// Set of `grant` configuration blocks. See below.
  final pulumi.Input<List<BucketAclV2AccessControlPolicyGrant>>? grants;
  /// Configuration block for the bucket owner's display name and ID. See below.
  final pulumi.Input<BucketAclV2AccessControlPolicyOwner> owner;

  /// Creates a new [BucketAclV2AccessControlPolicy].
  /// [grants] Set of `grant` configuration blocks. See below.
  /// [owner] Configuration block for the bucket owner's display name and ID. See below.
  const BucketAclV2AccessControlPolicy({
    this.grants,
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grants': ?pulumi.Input.mapOptionalInputValue<List<BucketAclV2AccessControlPolicyGrant>, List<Map<String, dynamic>>>(grants, (value) => pulumi.Input.encodeList<BucketAclV2AccessControlPolicyGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'owner': pulumi.Input.mapInputValue<BucketAclV2AccessControlPolicyOwner, Map<String, dynamic>>(owner, (value) => value.toMap()),
    };
  }

  factory BucketAclV2AccessControlPolicy.fromMap(Map<String, dynamic> map) {
    return BucketAclV2AccessControlPolicy(
      grants: (() { final guardedValue = map['grants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketAclV2AccessControlPolicyGrant>(guardedValue, (value) => BucketAclV2AccessControlPolicyGrant.fromMap((value as Map).cast<String, dynamic>()))); })(),
      owner: pulumi.Input.fromValue(BucketAclV2AccessControlPolicyOwner.fromMap((map['owner']! as Map).cast<String, dynamic>())),
    );
  }
}

