// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_memberships_group_membership.dart';

/// Result data returned by getGroupMemberships.
class GetGroupMembershipsResult {
  /// Group identifier.
  final String groupId;
  /// A list of group membership objects. See `groupMemberships` below.
  final List<GetGroupMembershipsGroupMembership> groupMemberships;
  /// Identity store identifier.
  final String identityStoreId;
  final String region;

  /// Creates a new [GetGroupMembershipsResult].
  /// [groupId] Group identifier.
  /// [groupMemberships] A list of group membership objects. See `groupMemberships` below.
  /// [identityStoreId] Identity store identifier.
  /// [region] Required.
  const GetGroupMembershipsResult({
    required this.groupId,
    required this.groupMemberships,
    required this.identityStoreId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'groupMemberships': pulumi.Input.encodeList<GetGroupMembershipsGroupMembership, Map<String, dynamic>>(groupMemberships, (value) => value.toMap()),
      'identityStoreId': identityStoreId,
      'region': region,
    };
  }

  factory GetGroupMembershipsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsResult(
      groupId: map['groupId'] as String,
      groupMemberships: pulumi.Input.decodeList<GetGroupMembershipsGroupMembership>(map['groupMemberships']!, (value) => GetGroupMembershipsGroupMembership.fromMap((value as Map).cast<String, dynamic>())),
      identityStoreId: map['identityStoreId'] as String,
      region: map['region'] as String,
    );
  }
}
