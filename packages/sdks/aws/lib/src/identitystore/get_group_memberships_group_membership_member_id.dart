// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupMembershipsGroupMembershipMemberId {
  /// User identifier of the group member.
  final pulumi.Input<String> userId;

  /// Creates a new [GetGroupMembershipsGroupMembershipMemberId].
  /// [userId] User identifier of the group member.
  GetGroupMembershipsGroupMembershipMemberId({required this.userId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'userId': userId};
  }

  factory GetGroupMembershipsGroupMembershipMemberId.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGroupMembershipsGroupMembershipMemberId(
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
