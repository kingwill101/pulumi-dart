// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_group_memberships_group_membership/get_group_memberships_group_membership.dart';

/// Result data returned by getGroupMemberships.
class GetGroupMembershipsResult {
  /// Group identifier.
  final String groupId;

  /// A list of group membership objects. See <span pulumi-lang-nodejs="`groupMemberships`" pulumi-lang-dotnet="`GroupMemberships`" pulumi-lang-go="`groupMemberships`" pulumi-lang-python="`group_memberships`" pulumi-lang-yaml="`groupMemberships`" pulumi-lang-java="`groupMemberships`">`group_memberships`</span> below.
  final List<GetGroupMembershipsGroupMembership> groupMemberships;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Identity store identifier.
  final String identityStoreId;
  final String region;

  GetGroupMembershipsResult({
    required this.groupId,
    required this.groupMemberships,
    required this.id,
    required this.identityStoreId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['groupMemberships'] = Input.encodeList<
        GetGroupMembershipsGroupMembership,
        Map<String, dynamic>>(groupMemberships, (value) => value.toMap());
    map['id'] = id;
    map['identityStoreId'] = identityStoreId;
    map['region'] = region;
    return map;
  }

  factory GetGroupMembershipsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsResult(
      groupId: map['groupId'] as String,
      groupMemberships: Input.decodeList<GetGroupMembershipsGroupMembership>(
          map['groupMemberships'],
          (value) => GetGroupMembershipsGroupMembership.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identityStoreId: map['identityStoreId'] as String,
      region: map['region'] as String,
    );
  }
}
