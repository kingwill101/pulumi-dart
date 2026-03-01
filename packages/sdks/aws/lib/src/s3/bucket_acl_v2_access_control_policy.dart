// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_acl_v2_access_control_policy_grant.dart';
import 'bucket_acl_v2_access_control_policy_owner.dart';

class BucketAclV2AccessControlPolicy {
  /// Set of `grant` configuration blocks. See below.
  final List<BucketAclV2AccessControlPolicyGrant>? grants;
  /// Configuration block for the bucket owner's display name and ID. See below.
  final BucketAclV2AccessControlPolicyOwner owner;

  /// Creates a new [BucketAclV2AccessControlPolicy].
  /// [grants] Set of `grant` configuration blocks. See below.
  /// [owner] Configuration block for the bucket owner's display name and ID. See below.
  BucketAclV2AccessControlPolicy({
    this.grants,
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grants': ?grants == null ? null : pulumi.Input.encodeList<BucketAclV2AccessControlPolicyGrant, Map<String, dynamic>>(grants!, (value) => value.toMap()),
      'owner': owner.toMap(),
    };
  }

  factory BucketAclV2AccessControlPolicy.fromMap(Map<String, dynamic> map) {
    return BucketAclV2AccessControlPolicy(
      grants: map['grants'] == null ? null : pulumi.Input.decodeList<BucketAclV2AccessControlPolicyGrant>(map['grants'], (value) => BucketAclV2AccessControlPolicyGrant.fromMap((value as Map).cast<String, dynamic>())),
      owner: BucketAclV2AccessControlPolicyOwner.fromMap((map['owner'] as Map).cast<String, dynamic>()),
    );
  }
}

