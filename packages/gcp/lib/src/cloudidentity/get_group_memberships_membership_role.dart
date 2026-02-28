// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_memberships_membership_role_expiry_detail.dart';

class GetGroupMembershipsMembershipRole {
  /// The MembershipRole expiry details, only supported for MEMBER role.
  /// Other roles cannot be accompanied with MEMBER role having expiry.
  final List<GetGroupMembershipsMembershipRoleExpiryDetail> expiryDetails;

  /// The name of the MembershipRole. One of OWNER, MANAGER, MEMBER.
  final String name;

  /// Creates a new [GetGroupMembershipsMembershipRole].
  /// [expiryDetails] The MembershipRole expiry details, only supported for MEMBER role.
  /// [name] The name of the MembershipRole. One of OWNER, MANAGER, MEMBER.
  GetGroupMembershipsMembershipRole({
    required this.expiryDetails,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expiryDetails'] = pulumi.Input.encodeList<
        GetGroupMembershipsMembershipRoleExpiryDetail,
        Map<String, dynamic>>(expiryDetails, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory GetGroupMembershipsMembershipRole.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsMembershipRole(
      expiryDetails: pulumi.Input.decodeList<
              GetGroupMembershipsMembershipRoleExpiryDetail>(
          map['expiryDetails'],
          (value) => GetGroupMembershipsMembershipRoleExpiryDetail.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
