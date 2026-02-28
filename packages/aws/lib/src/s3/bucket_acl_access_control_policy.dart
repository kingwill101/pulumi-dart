// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_acl_access_control_policy_grant.dart';
import 'bucket_acl_access_control_policy_owner.dart';

class BucketAclAccessControlPolicy {
  /// Set of `grant` configuration blocks. See below.
  final List<BucketAclAccessControlPolicyGrant>? grants;

  /// Configuration block for the bucket owner's display name and ID. See below.
  final BucketAclAccessControlPolicyOwner owner;

  /// Creates a new [BucketAclAccessControlPolicy].
  /// [grants] Set of `grant` configuration blocks. See below.
  /// [owner] Configuration block for the bucket owner's display name and ID. See below.
  BucketAclAccessControlPolicy({
    this.grants,
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final grantsValue = grants;
    if (grantsValue != null) {
      map['grants'] = pulumi.Input.encodeList<BucketAclAccessControlPolicyGrant,
          Map<String, dynamic>>(grantsValue, (value) => value.toMap());
    }
    map['owner'] = owner.toMap();
    return map;
  }

  factory BucketAclAccessControlPolicy.fromMap(Map<String, dynamic> map) {
    return BucketAclAccessControlPolicy(
      grants: map['grants'] == null
          ? null
          : pulumi.Input.decodeList<BucketAclAccessControlPolicyGrant>(
              map['grants'],
              (value) => BucketAclAccessControlPolicyGrant.fromMap(
                  (value as Map).cast<String, dynamic>())),
      owner: BucketAclAccessControlPolicyOwner.fromMap(
          (map['owner'] as Map).cast<String, dynamic>()),
    );
  }
}
