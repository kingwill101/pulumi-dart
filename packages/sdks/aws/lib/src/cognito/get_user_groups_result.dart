// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_groups_group.dart';

/// Result data returned by getUserGroups.
class GetUserGroupsResult {
  /// List of groups. See `groups` below.
  final List<GetUserGroupsGroup>? groups;
  /// User pool identifier.
  final String? id;
  final String? region;
  final String? userPoolId;

  /// Creates a new [GetUserGroupsResult].
  /// [groups] List of groups. See `groups` below.
  /// [id] User pool identifier.
  /// [region] Optional.
  /// [userPoolId] Optional.
  const GetUserGroupsResult({
    this.groups,
    this.id,
    this.region,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': ?(() { final guardedValue = groups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserGroupsGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
      'userPoolId': ?userPoolId,
    };
  }

  factory GetUserGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsResult(
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserGroupsGroup>(guardedValue, (value) => GetUserGroupsGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userPoolId: (() { final guardedValue = map['userPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
