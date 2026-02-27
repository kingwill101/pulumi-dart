// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'entity_key.dart';
import 'membership_role.dart';

/// The set of arguments for Membership.
class MembershipArgs {
  final Input<String> groupId;

  /// Immutable. The `EntityKey` of the member.
  final Input<EntityKey> preferredMemberKey;

  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  final Input<List<MembershipRole>>? roles;

  MembershipArgs({
    required this.groupId,
    required this.preferredMemberKey,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['preferredMemberKey'] =
        Input.mapInputValue<EntityKey, Map<String, dynamic>>(
            preferredMemberKey, (value) => value.toMap());
    final rolesValue = roles;
    if (rolesValue != null) {
      map['roles'] = Input.mapOptionalInputValue<List<MembershipRole>,
              List<Map<String, dynamic>>>(
          rolesValue,
          (value) => Input.encodeList<MembershipRole, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory MembershipArgs.fromMap(Map<String, dynamic> map) {
    return MembershipArgs(
      groupId: Input.asInput<String>(map['groupId']),
      preferredMemberKey: Input.asInput<EntityKey>(map['preferredMemberKey']),
      roles: Input.asOptionalInput<List<MembershipRole>>(map['roles']),
    );
  }
}
