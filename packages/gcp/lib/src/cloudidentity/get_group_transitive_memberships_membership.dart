// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_transitive_memberships_membership_preferred_member_key.dart';
import 'get_group_transitive_memberships_membership_role.dart';

class GetGroupTransitiveMembershipsMembership {
  /// EntityKey of the member.  This value will be either a userKey in the format `users/000000000000000000000` with a numerical id or a groupKey in the format `groups/000ab0000ab0000` with a hexadecimal id.
  final String member;

  /// EntityKey of the member.  Structure is documented below.
  final List<GetGroupTransitiveMembershipsMembershipPreferredMemberKey>
      preferredMemberKeys;

  /// The relation between the group and the transitive member. The value can be DIRECT, INDIRECT, or DIRECT_AND_INDIRECT.
  final String relationType;

  /// The TransitiveMembershipRoles that apply to the Membership. Structure is documented below.
  final List<GetGroupTransitiveMembershipsMembershipRole> roles;

  /// Creates a new [GetGroupTransitiveMembershipsMembership].
  /// [member] EntityKey of the member.  This value will be either a userKey in the format `users/000000000000000000000` with a numerical id or a groupKey in the format `groups/000ab0000ab0000` with a hexadecimal id.
  /// [preferredMemberKeys] EntityKey of the member.  Structure is documented below.
  /// [relationType] The relation between the group and the transitive member. The value can be DIRECT, INDIRECT, or DIRECT_AND_INDIRECT.
  /// [roles] The TransitiveMembershipRoles that apply to the Membership. Structure is documented below.
  GetGroupTransitiveMembershipsMembership({
    required this.member,
    required this.preferredMemberKeys,
    required this.relationType,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['member'] = member;
    map['preferredMemberKeys'] = pulumi.Input.encodeList<
        GetGroupTransitiveMembershipsMembershipPreferredMemberKey,
        Map<String, dynamic>>(preferredMemberKeys, (value) => value.toMap());
    map['relationType'] = relationType;
    map['roles'] = pulumi.Input.encodeList<
        GetGroupTransitiveMembershipsMembershipRole,
        Map<String, dynamic>>(roles, (value) => value.toMap());
    return map;
  }

  factory GetGroupTransitiveMembershipsMembership.fromMap(
      Map<String, dynamic> map) {
    return GetGroupTransitiveMembershipsMembership(
      member: map['member'] as String,
      preferredMemberKeys: pulumi.Input.decodeList<
              GetGroupTransitiveMembershipsMembershipPreferredMemberKey>(
          map['preferredMemberKeys'],
          (value) =>
              GetGroupTransitiveMembershipsMembershipPreferredMemberKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      relationType: map['relationType'] as String,
      roles:
          pulumi.Input.decodeList<GetGroupTransitiveMembershipsMembershipRole>(
              map['roles'],
              (value) => GetGroupTransitiveMembershipsMembershipRole.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
