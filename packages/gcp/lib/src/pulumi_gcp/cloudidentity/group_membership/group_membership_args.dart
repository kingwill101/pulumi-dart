// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_membership_member_key/group_membership_member_key.dart';
import '../group_membership_preferred_member_key/group_membership_preferred_member_key.dart';
import '../group_membership_role/group_membership_role.dart';

/// The set of arguments for GroupMembership.
class GroupMembershipArgs {
  /// If set to true, skip group member creation if a membership with the same name already exists. Defaults to false.
  final pulumi.Input<bool>? createIgnoreAlreadyExists;

  /// The name of the Group to create this membership in.
  final pulumi.Input<String> group;

  /// EntityKey of the member.
  /// Structure is documented below.
  final pulumi.Input<GroupMembershipMemberKey>? memberKey;

  /// EntityKey of the member.
  /// Structure is documented below.
  final pulumi.Input<GroupMembershipPreferredMemberKey>? preferredMemberKey;

  /// The MembershipRoles that apply to the Membership.
  /// Must not contain duplicate MembershipRoles with the same name.
  /// Structure is documented below.
  final pulumi.Input<List<GroupMembershipRole>> roles;

  GroupMembershipArgs({
    this.createIgnoreAlreadyExists,
    required this.group,
    this.memberKey,
    this.preferredMemberKey,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createIgnoreAlreadyExistsValue = createIgnoreAlreadyExists;
    if (createIgnoreAlreadyExistsValue != null) {
      map['createIgnoreAlreadyExists'] = createIgnoreAlreadyExistsValue;
    }
    map['group'] = group;
    final memberKeyValue = memberKey;
    if (memberKeyValue != null) {
      map['memberKey'] = pulumi.Input.mapOptionalInputValue<
          GroupMembershipMemberKey,
          Map<String, dynamic>>(memberKeyValue, (value) => value.toMap());
    }
    final preferredMemberKeyValue = preferredMemberKey;
    if (preferredMemberKeyValue != null) {
      map['preferredMemberKey'] = pulumi.Input.mapOptionalInputValue<
              GroupMembershipPreferredMemberKey, Map<String, dynamic>>(
          preferredMemberKeyValue, (value) => value.toMap());
    }
    map['roles'] = pulumi.Input.mapInputValue<List<GroupMembershipRole>,
            List<Map<String, dynamic>>>(
        roles,
        (value) =>
            pulumi.Input.encodeList<GroupMembershipRole, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory GroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GroupMembershipArgs(
      createIgnoreAlreadyExists:
          pulumi.Input.asOptionalInput<bool>(map['createIgnoreAlreadyExists']),
      group: pulumi.Input.asInput<String>(map['group']),
      memberKey: pulumi.Input.asOptionalInput<GroupMembershipMemberKey>(
          map['memberKey']),
      preferredMemberKey:
          pulumi.Input.asOptionalInput<GroupMembershipPreferredMemberKey>(
              map['preferredMemberKey']),
      roles: pulumi.Input.asInput<List<GroupMembershipRole>>(map['roles']),
    );
  }
}
