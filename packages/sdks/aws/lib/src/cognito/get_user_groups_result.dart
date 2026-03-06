// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_groups_group.dart';

/// Result data returned by getUserGroups.
class GetUserGroupsResult {
  /// List of groups. See `groups` below.
  final List<GetUserGroupsGroup> groups;
  /// User pool identifier.
  final String id;
  final String region;
  final String userPoolId;

  /// Creates a new [GetUserGroupsResult].
  /// [groups] List of groups. See `groups` below.
  /// [id] User pool identifier.
  /// [region] Required.
  /// [userPoolId] Required.
  const GetUserGroupsResult({
    required this.groups,
    required this.id,
    required this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.encodeList<GetUserGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'region': region,
      'userPoolId': userPoolId,
    };
  }

  factory GetUserGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsResult(
      groups: pulumi.Input.decodeList<GetUserGroupsGroup>(map['groups']!, (value) => GetUserGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}

