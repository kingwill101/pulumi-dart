// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_memberships_group_membership_member_id.dart';

class GetGroupMembershipsGroupMembership {
  /// The identifier for a group in the Identity Store.
  final pulumi.Input<String> groupId;

  /// Identity Store ID associated with the Single Sign-On Instance.
  final pulumi.Input<String> identityStoreId;

  /// An object containing the identifier of a group member. See `member_id` below.
  final pulumi.Input<GetGroupMembershipsGroupMembershipMemberId> memberId;
  final pulumi.Input<String> membershipId;

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
      'memberId':
          pulumi.Input.mapInputValue<
            GetGroupMembershipsGroupMembershipMemberId,
            Map<String, dynamic>
          >(memberId, (value) => value.toMap()),
      'membershipId': membershipId,
    };
  }

  factory GetGroupMembershipsGroupMembership.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsGroupMembership(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      identityStoreId: pulumi.Input.fromValue(map['identityStoreId'] as String),
      memberId: pulumi.Input.fromValue(
        GetGroupMembershipsGroupMembershipMemberId.fromMap(
          (map['memberId']! as Map).cast<String, dynamic>(),
        ),
      ),
      membershipId: pulumi.Input.fromValue(map['membershipId'] as String),
    );
  }
}
