// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_memberships_group_membership.dart';

/// Result data returned by getGroupMemberships.
class GetGroupMembershipsResult {
  /// Group identifier.
  final String? groupId;
  /// A list of group membership objects. See `groupMemberships` below.
  final List<GetGroupMembershipsGroupMembership>? groupMemberships;
  /// Identity store identifier.
  final String? identityStoreId;
  final String? region;

  /// Creates a new [GetGroupMembershipsResult].
  /// [groupId] Group identifier.
  /// [groupMemberships] A list of group membership objects. See `groupMemberships` below.
  /// [identityStoreId] Identity store identifier.
  /// [region] Optional.
  const GetGroupMembershipsResult({
    this.groupId,
    this.groupMemberships,
    this.identityStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'groupMemberships': ?(() { final guardedValue = groupMemberships; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupMembershipsGroupMembership, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'identityStoreId': ?identityStoreId,
      'region': ?region,
    };
  }

  factory GetGroupMembershipsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsResult(
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupMemberships: (() { final guardedValue = map['groupMemberships']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupMembershipsGroupMembership>(guardedValue, (value) => GetGroupMembershipsGroupMembership.fromMap((value as Map).cast<String, dynamic>())); })(),
      identityStoreId: (() { final guardedValue = map['identityStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
