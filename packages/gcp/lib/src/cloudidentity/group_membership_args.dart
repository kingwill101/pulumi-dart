// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_membership_member_key.dart';
import 'group_membership_preferred_member_key.dart';
import 'group_membership_role.dart';

/// {@template pulumi_cloudidentity_group_membership_group_membership_args_doc}
/// The set of arguments for GroupMembership.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_group_membership_group_membership_args_doc}
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

  /// Creates a new [GroupMembershipArgs].
  /// [createIgnoreAlreadyExists] If set to true, skip group member creation if a membership with the same name already exists. Defaults to false.
  /// [group] The name of the Group to create this membership in.
  /// [memberKey] EntityKey of the member.
  /// [preferredMemberKey] EntityKey of the member.
  /// [roles] The MembershipRoles that apply to the Membership.
  GroupMembershipArgs({
    bool? createIgnoreAlreadyExists,
    required String group,
    GroupMembershipMemberKey? memberKey,
    GroupMembershipPreferredMemberKey? preferredMemberKey,
    required List<GroupMembershipRole> roles,
  })  : createIgnoreAlreadyExists =
            pulumi.Input.asOptionalInput<bool>(createIgnoreAlreadyExists),
        group = pulumi.Input.asInput<String>(group),
        memberKey =
            pulumi.Input.asOptionalInput<GroupMembershipMemberKey>(memberKey),
        preferredMemberKey =
            pulumi.Input.asOptionalInput<GroupMembershipPreferredMemberKey>(
                preferredMemberKey),
        roles = pulumi.Input.asInput<List<GroupMembershipRole>>(roles);

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
      createIgnoreAlreadyExists: map['createIgnoreAlreadyExists'] == null
          ? null
          : map['createIgnoreAlreadyExists'] as bool,
      group: map['group'] as String,
      memberKey: map['memberKey'] == null
          ? null
          : GroupMembershipMemberKey.fromMap(
              (map['memberKey'] as Map).cast<String, dynamic>()),
      preferredMemberKey: map['preferredMemberKey'] == null
          ? null
          : GroupMembershipPreferredMemberKey.fromMap(
              (map['preferredMemberKey'] as Map).cast<String, dynamic>()),
      roles: pulumi.Input.decodeList<GroupMembershipRole>(
          map['roles'],
          (value) => GroupMembershipRole.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
