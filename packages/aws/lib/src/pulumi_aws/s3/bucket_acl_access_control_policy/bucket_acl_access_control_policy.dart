// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_acl_access_control_policy_grant/bucket_acl_access_control_policy_grant.dart';
import '../bucket_acl_access_control_policy_owner/bucket_acl_access_control_policy_owner.dart';

class BucketAclAccessControlPolicy {
  /// Set of <span pulumi-lang-nodejs="`grant`" pulumi-lang-dotnet="`Grant`" pulumi-lang-go="`grant`" pulumi-lang-python="`grant`" pulumi-lang-yaml="`grant`" pulumi-lang-java="`grant`">`grant`</span> configuration blocks. See below.
  final List<BucketAclAccessControlPolicyGrant>? grants;

  /// Configuration block for the bucket owner's display name and ID. See below.
  final BucketAclAccessControlPolicyOwner owner;

  BucketAclAccessControlPolicy({
    this.grants,
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final grantsValue = grants;
    if (grantsValue != null) {
      map['grants'] = Input.encodeList<BucketAclAccessControlPolicyGrant,
          Map<String, dynamic>>(grantsValue, (value) => value.toMap());
    }
    map['owner'] = owner.toMap();
    return map;
  }

  factory BucketAclAccessControlPolicy.fromMap(Map<String, dynamic> map) {
    return BucketAclAccessControlPolicy(
      grants: map['grants'] == null
          ? null
          : Input.decodeList<BucketAclAccessControlPolicyGrant>(
              map['grants'],
              (value) => BucketAclAccessControlPolicyGrant.fromMap(
                  (value as Map).cast<String, dynamic>())),
      owner: BucketAclAccessControlPolicyOwner.fromMap(
          (map['owner'] as Map).cast<String, dynamic>()),
    );
  }
}
