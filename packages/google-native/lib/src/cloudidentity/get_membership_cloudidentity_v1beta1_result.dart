// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_key_response_cloudidentity_v1beta1.dart';
import 'membership_role_response_cloudidentity_v1beta1.dart';

/// Result data returned by getMembership.
class GetMembershipCloudidentityV1beta1Result {
  /// The time when the `Membership` was created.
  final String createTime;

  /// Delivery setting associated with the membership.
  final String deliverySetting;

  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  final EntityKeyResponseCloudidentityV1beta1 memberKey;

  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group_id}/memberships/{membership_id}`.
  final String name;

  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  final EntityKeyResponseCloudidentityV1beta1 preferredMemberKey;

  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  final List<MembershipRoleResponseCloudidentityV1beta1> roles;

  /// The type of the membership.
  final String type;

  /// The time when the `Membership` was last updated.
  final String updateTime;

  /// Creates a new [GetMembershipCloudidentityV1beta1Result].
  /// [createTime] The time when the `Membership` was created.
  /// [deliverySetting] Delivery setting associated with the membership.
  /// [memberKey] Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  /// [name] The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group_id}/memberships/{membership_id}`.
  /// [preferredMemberKey] Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  /// [roles] The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  /// [type] The type of the membership.
  /// [updateTime] The time when the `Membership` was last updated.
  GetMembershipCloudidentityV1beta1Result({
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
    map['roles'] = pulumi.Input.encodeList<
        MembershipRoleResponseCloudidentityV1beta1,
        Map<String, dynamic>>(roles, (value) => value.toMap());
    map['type'] = type;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetMembershipCloudidentityV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetMembershipCloudidentityV1beta1Result(
      createTime: map['createTime'] as String,
      deliverySetting: map['deliverySetting'] as String,
      memberKey: EntityKeyResponseCloudidentityV1beta1.fromMap(
          (map['memberKey'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      preferredMemberKey: EntityKeyResponseCloudidentityV1beta1.fromMap(
          (map['preferredMemberKey'] as Map).cast<String, dynamic>()),
      roles:
          pulumi.Input.decodeList<MembershipRoleResponseCloudidentityV1beta1>(
              map['roles'],
              (value) => MembershipRoleResponseCloudidentityV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
