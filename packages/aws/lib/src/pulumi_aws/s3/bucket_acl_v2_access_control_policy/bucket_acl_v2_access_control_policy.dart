// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_acl_v2_access_control_policy_grant/bucket_acl_v2_access_control_policy_grant.dart';
import '../bucket_acl_v2_access_control_policy_owner/bucket_acl_v2_access_control_policy_owner.dart';

class BucketAclV2AccessControlPolicy {
  /// Set of <span pulumi-lang-nodejs="`grant`" pulumi-lang-dotnet="`Grant`" pulumi-lang-go="`grant`" pulumi-lang-python="`grant`" pulumi-lang-yaml="`grant`" pulumi-lang-java="`grant`">`grant`</span> configuration blocks. See below.
  final List<BucketAclV2AccessControlPolicyGrant>? grants;

  /// Configuration block for the bucket owner's display name and ID. See below.
  final BucketAclV2AccessControlPolicyOwner owner;

  BucketAclV2AccessControlPolicy({
    this.grants,
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final grantsValue = grants;
    if (grantsValue != null) {
      map['grants'] = Input.encodeList<BucketAclV2AccessControlPolicyGrant,
          Map<String, dynamic>>(grantsValue, (value) => value.toMap());
    }
    map['owner'] = owner.toMap();
    return map;
  }

  factory BucketAclV2AccessControlPolicy.fromMap(Map<String, dynamic> map) {
    return BucketAclV2AccessControlPolicy(
      grants: map['grants'] == null
          ? null
          : Input.decodeList<BucketAclV2AccessControlPolicyGrant>(
              map['grants'],
              (value) => BucketAclV2AccessControlPolicyGrant.fromMap(
                  (value as Map).cast<String, dynamic>())),
      owner: BucketAclV2AccessControlPolicyOwner.fromMap(
          (map['owner'] as Map).cast<String, dynamic>()),
    );
  }
}
