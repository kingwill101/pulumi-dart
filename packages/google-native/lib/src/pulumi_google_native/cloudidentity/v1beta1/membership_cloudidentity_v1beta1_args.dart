// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_key_cloudidentity_v1beta1.dart';
import 'membership_role_cloudidentity_v1beta1.dart';

/// The set of arguments for Membership.
class MembershipCloudidentityV1beta1Args {
  final pulumi.Input<String> groupId;

  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  final pulumi.Input<EntityKeyCloudidentityV1beta1>? memberKey;

  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  final pulumi.Input<EntityKeyCloudidentityV1beta1> preferredMemberKey;

  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  final pulumi.Input<List<MembershipRoleCloudidentityV1beta1>>? roles;

  MembershipCloudidentityV1beta1Args({
    required this.groupId,
    this.memberKey,
    required this.preferredMemberKey,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    final memberKeyValue = memberKey;
    if (memberKeyValue != null) {
      map['memberKey'] = pulumi.Input.mapOptionalInputValue<
          EntityKeyCloudidentityV1beta1,
          Map<String, dynamic>>(memberKeyValue, (value) => value.toMap());
    }
    map['preferredMemberKey'] = pulumi.Input.mapInputValue<
        EntityKeyCloudidentityV1beta1,
        Map<String, dynamic>>(preferredMemberKey, (value) => value.toMap());
    final rolesValue = roles;
    if (rolesValue != null) {
      map['roles'] = pulumi.Input.mapOptionalInputValue<
              List<MembershipRoleCloudidentityV1beta1>,
              List<Map<String, dynamic>>>(
          rolesValue,
          (value) => pulumi.Input.encodeList<MembershipRoleCloudidentityV1beta1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory MembershipCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return MembershipCloudidentityV1beta1Args(
      groupId: pulumi.Input.asInput<String>(map['groupId']),
      memberKey: pulumi.Input.asOptionalInput<EntityKeyCloudidentityV1beta1>(
          map['memberKey']),
      preferredMemberKey: pulumi.Input.asInput<EntityKeyCloudidentityV1beta1>(
          map['preferredMemberKey']),
      roles: pulumi.Input.asOptionalInput<
          List<MembershipRoleCloudidentityV1beta1>>(map['roles']),
    );
  }
}
