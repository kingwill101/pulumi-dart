// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_group_transitive_memberships_membership/get_group_transitive_memberships_membership.dart';

/// Result data returned by getGroupTransitiveMemberships.
class GetGroupTransitiveMembershipsResult {
  final String group;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The list of memberships under the given group. Structure is documented below.
  final List<GetGroupTransitiveMembershipsMembership> memberships;

  GetGroupTransitiveMembershipsResult({
    required this.group,
    required this.id,
    required this.memberships,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group;
    map['id'] = id;
    map['memberships'] = pulumi.Input.encodeList<
        GetGroupTransitiveMembershipsMembership,
        Map<String, dynamic>>(memberships, (value) => value.toMap());
    return map;
  }

  factory GetGroupTransitiveMembershipsResult.fromMap(
      Map<String, dynamic> map) {
    return GetGroupTransitiveMembershipsResult(
      group: map['group'] as String,
      id: map['id'] as String,
      memberships:
          pulumi.Input.decodeList<GetGroupTransitiveMembershipsMembership>(
              map['memberships'],
              (value) => GetGroupTransitiveMembershipsMembership.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
