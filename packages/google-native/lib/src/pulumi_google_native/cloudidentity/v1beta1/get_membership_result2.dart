// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'entity_key_response2.dart';
import 'membership_role_response2.dart';

/// Result data returned by getMembership.
class GetMembershipResult2 {
  /// The time when the `Membership` was created.
  final String createTime;

  /// Delivery setting associated with the membership.
  final String deliverySetting;

  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  final EntityKeyResponse2 memberKey;

  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group_id}/memberships/{membership_id}`.
  final String name;

  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  final EntityKeyResponse2 preferredMemberKey;

  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  final List<MembershipRoleResponse2> roles;

  /// The type of the membership.
  final String type;

  /// The time when the `Membership` was last updated.
  final String updateTime;

  GetMembershipResult2({
    required this.createTime,
    required this.deliverySetting,
    required this.memberKey,
    required this.name,
    required this.preferredMemberKey,
    required this.roles,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['deliverySetting'] = deliverySetting;
    map['memberKey'] = memberKey.toMap();
    map['name'] = name;
    map['preferredMemberKey'] = preferredMemberKey.toMap();
    map['roles'] =
        Input.encodeList<MembershipRoleResponse2, Map<String, dynamic>>(
            roles, (value) => value.toMap());
    map['type'] = type;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetMembershipResult2.fromMap(Map<String, dynamic> map) {
    return GetMembershipResult2(
      createTime: map['createTime'] as String,
      deliverySetting: map['deliverySetting'] as String,
      memberKey: EntityKeyResponse2.fromMap(
          (map['memberKey'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      preferredMemberKey: EntityKeyResponse2.fromMap(
          (map['preferredMemberKey'] as Map).cast<String, dynamic>()),
      roles: Input.decodeList<MembershipRoleResponse2>(
          map['roles'],
          (value) => MembershipRoleResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
