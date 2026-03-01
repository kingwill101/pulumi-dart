// ignore_for_file: unused_element, unnecessary_cast

import 'get_group_memberships_group_membership_member_id.dart';

class GetGroupMembershipsGroupMembership {
  /// The identifier for a group in the Identity Store.
  final String groupId;
  /// Identity Store ID associated with the Single Sign-On Instance.
  final String identityStoreId;
  /// An object containing the identifier of a group member. See `member_id` below.
  final GetGroupMembershipsGroupMembershipMemberId memberId;
  final String membershipId;

  /// Creates a new [GetGroupMembershipsGroupMembership].
  /// [groupId] The identifier for a group in the Identity Store.
  /// [identityStoreId] Identity Store ID associated with the Single Sign-On Instance.
  /// [memberId] An object containing the identifier of a group member. See `member_id` below.
  /// [membershipId] Required.
  GetGroupMembershipsGroupMembership({
    required this.groupId,
    required this.identityStoreId,
    required this.memberId,
    required this.membershipId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'identityStoreId': identityStoreId,
      'memberId': memberId.toMap(),
      'membershipId': membershipId,
    };
  }

  factory GetGroupMembershipsGroupMembership.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsGroupMembership(
      groupId: map['groupId'] as String,
      identityStoreId: map['identityStoreId'] as String,
      memberId: GetGroupMembershipsGroupMembershipMemberId.fromMap((map['memberId'] as Map).cast<String, dynamic>()),
      membershipId: map['membershipId'] as String,
    );
  }
}

