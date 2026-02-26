// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'entity_key2.dart';
import 'membership_role2.dart';

/// The set of arguments for Membership.
class MembershipArgs2 {
  final Input<String> groupId;

  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  final Input<EntityKey2>? memberKey;

  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  final Input<EntityKey2> preferredMemberKey;

  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  final Input<List<MembershipRole2>>? roles;

  MembershipArgs2({
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
      map['memberKey'] =
          Input.mapOptionalInputValue<EntityKey2, Map<String, dynamic>>(
              memberKeyValue, (value) => value.toMap());
    }
    map['preferredMemberKey'] =
        Input.mapInputValue<EntityKey2, Map<String, dynamic>>(
            preferredMemberKey, (value) => value.toMap());
    final rolesValue = roles;
    if (rolesValue != null) {
      map['roles'] = Input.mapOptionalInputValue<List<MembershipRole2>,
              List<Map<String, dynamic>>>(
          rolesValue,
          (value) => Input.encodeList<MembershipRole2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory MembershipArgs2.fromMap(Map<String, dynamic> map) {
    return MembershipArgs2(
      groupId: Input.asInput<String>(map['groupId']),
      memberKey: Input.asOptionalInput<EntityKey2>(map['memberKey']),
      preferredMemberKey: Input.asInput<EntityKey2>(map['preferredMemberKey']),
      roles: Input.asOptionalInput<List<MembershipRole2>>(map['roles']),
    );
  }
}
